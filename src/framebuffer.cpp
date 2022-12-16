
#include "framebuffer.h"
#include "math.h"
#include <iostream>
#include "scene.h"
#include "ppc.h"
#include "cubemap.h"

#include <tiffio.h>
#include <stdio.h>
#include <stdlib.h>
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

using namespace std;

FrameBuffer::FrameBuffer(int u0, int v0, int _w, int _h) :
        Fl_Gl_Window(u0, v0, _w, _h, 0) {

    ishw = 0;
    w = _w;
    h = _h;
    pix = new unsigned int[w*h];
    zb = new float[w*h];
    sm = new float[512*512];

}


void FrameBuffer::draw() {

    if (!ishw) {
        glDrawPixels(w, h, GL_RGBA, GL_UNSIGNED_BYTE, pix);
    }
    else {
        scene->RenderHW();
    }

}

int FrameBuffer::handle(int event) {

    switch (event)
    {
        case FL_KEYBOARD: {
            KeyboardHandle();
            return 0;
        }
        case FL_MOVE: {
            int u = Fl::event_x();
            int v = Fl::event_y();
            cerr << u << " " << v << "      \r";
            return 0;
        }
        default:
            return 0;
    }
}

void FrameBuffer::KeyboardHandle() {
    int key = Fl::event_key();
    switch (key) {
        case FL_Left: {
            scene->Left();
            break;
        }
        case FL_Right: {
            scene->Right();
            break;
        }
        case FL_Up: {
            scene->Up();
            break;
        }
        case FL_Down: {
            scene->Down();
            break;
        }
        case '=': {
            scene->Front();
            break;
        }
        case '-': {
            scene->Back();
            break;
        }
        case FL_Shift_R: {
            scene->ZoomIn();
            break;
        }
        case FL_Shift_L: {
            scene->ZoomOut();
            break;
        }
        case 'e': {
            scene->RotateX();
            break;
        }
        case 'q': {
            scene->RotateXn();
            break;
        }
        case 'w': {
            scene->Tilt();
            break;
        }
        case 's': {
            scene->TiltN();
            break;
        }
        case 'd': {
            scene->Pan();
            break;
        }
        case 'a': {
            scene->PanN();
            break;
        }
        case 'l': {
            scene->LightR();
            break;
        }
        case 'j': {
            scene->LightL();
            break;
        }
        case 'i': {
            scene->LightU();
            break;
        }
        case 'k': {
            scene->LightD();
            break;
        }
        case '1': {
            scene->RotateMesh();
            break;
        }
        case '2': {
            break;
        }
            default:
            cerr << "INFO: do not understand keypress" << endl;
            return;
    }

}

void FrameBuffer::SetBGR(unsigned int bgr) {

    for (int uv = 0; uv < w*h; uv++)
        pix[uv] = bgr;

}

void FrameBuffer::SetZB(float zf) {

    for (int uv = 0; uv < w*h; uv++)
        zb[uv] = zf;

}

void FrameBuffer::SetSM(float sf) {

    for (int uv = 0; uv < w*h; uv++)
        sm[uv] = sf;

}


void FrameBuffer::SetChecker(unsigned int col0, unsigned int col1, int csize) {

    for (int v = 0; v < h; v++) {
        for (int u = 0; u < w; u++) {
            int cu = u / csize;
            int cv = v / csize;
            if ((cu + cv) % 2)
                Set(u, v, col0);
            else
                Set(u, v, col1);
        }
    }

}

void FrameBuffer::ViewShadowMap(float *some_sm) {

    for (int v = 0; v < h; v++) {
        for (int u = 0; u < w; u++) {
            Set(u, v, (int) V3(some_sm[(h - 1 - v)*w + u] / 10.0f, some_sm[(h - 1 - v)*w + u]/10.0f, some_sm[(h - 1 - v)*w + u]/10.0f).GetColor());
        }
    }

}

void FrameBuffer::DrawAARectangle(V3 tlc, V3 brc, unsigned int col) {

    // entire rectangle off screen
    if (tlc[0] > (float)w)
        return;
    if (brc[0] < 0.0f)
        return;
    if (tlc[1] > (float)h)
        return;
    if (brc[1] < 0.0f)
        return;

    // rectangle partially off screen
    if (tlc[0] < 0.0f)
        tlc[0] = 0.0f;
    if (brc[0] > (float)w)
        brc[0] = (float)w;
    if (tlc[1] < 0.0f)
        tlc[1] = 0.0f;
    if (brc[1] > (float)h)
        brc[1] = (float)h;

    int umin = (int)(tlc[0]+0.5f);
    int umax = (int)(brc[0]-0.5f);
    int vmin = (int)(tlc[1]+0.5f);
    int vmax = (int)(brc[1]-0.5f);
    for (int v = vmin; v <= vmax; v++) {
        for (int u = umin; u <= umax; u++) {
            Set(u, v, col);
        }
    }

}

void FrameBuffer::SetShadow(float x[3], float y[3], float z[3]) {
    float a[3], b[3], c[3]; // a, b, c for 3 edge expressions
    a[0] = y[0] - y[1]; b[0] = x[1] - x[0]; c[0] = x[0]*y[1] - x[1]*y[0];
    a[1] = y[1] - y[2]; b[1] = x[2] - x[1]; c[1] = x[1]*y[2] - x[2]*y[1];
    a[2] = y[2] - y[0]; b[2] = x[0] - x[2]; c[2] = x[2]*y[0] - x[0]*y[2];
    float f0 = a[1]*x[0] + b[1]*y[0] + c[1]; // f12(x0,y0)
    float f1 = a[2]*x[1] + b[2]*y[1] + c[2]; // f20(x1,y1)
    float f2 = a[0]*x[2] + b[0]*y[2] + c[0]; // f01(x2,y2)
    // compute screen axes-aligned bounding box for triangle
    float bbox[2][2]; // for each x and y, store the min and max values
    // compute boundary box
    bbox[0][0] = min(min(x[0], x[1]), x[2]);
    bbox[0][1] = max(max(x[0], x[1]), x[2]);
    bbox[1][0] = min(min(y[0], y[1]), y[2]);
    bbox[1][1] = max(max(y[0], y[1]), y[2]);


    int left = (int) (bbox[0][0] - .5), right = (int) (bbox[0][1] + .5);
    int top= (int) (bbox[1][0] -.5), bottom = (int) (bbox[1][1] + .5);

    //ClipBBox(bbox, 0, w, 0, h);
    // entire boundary box off screen
    if (left > w)
        return;
    if (right < 0)
        return;
    if (top > h)
        return;
    if (bottom < 0)
        return;

    // boundary box partially off screen
    if (left < 0)
        left = 0;
    if (right > w)
        right = w;
    if (bottom > h)
        bottom = h;
    if (top < 0)
        top = 0;

    for (int v = top; v <= bottom; v++) {
        for (int u = left; u <= right; u++) {
            float wa = (a[1]*(float) u + b[1]*(float) v + c[1]) / f0;
            float wb = (a[2]*(float) u + b[2]*(float) v + c[2]) / f1;
            float wc = (a[0]*(float) u + b[0]*(float) v + c[0]) / f2;
            if (wa > 0 && wb > 0 && wc > 0) {
                float ipZ = z[0]*wa + z[1]*wb + z[2]*wc;
                if (sm[(h - 1 - v)*w + u] < ipZ) {
                    sm[(h - 1 - v)*w + u] = ipZ;
                }
            }
        }
    }
}

// x and y are image space coordinates of the 3 vertices in pixels
void FrameBuffer::DrawTriangle(float x[3], float y[3], float z[3], V3 col[3]) {
    float a[3], b[3], c[3]; // a, b, c for 3 edge expressions
    a[0] = y[0] - y[1]; b[0] = x[1] - x[0]; c[0] = x[0]*y[1] - x[1]*y[0];
    a[1] = y[1] - y[2]; b[1] = x[2] - x[1]; c[1] = x[1]*y[2] - x[2]*y[1];
    a[2] = y[2] - y[0]; b[2] = x[0] - x[2]; c[2] = x[2]*y[0] - x[0]*y[2];
    float f0 = a[1]*x[0] + b[1]*y[0] + c[1]; // f12(x0,y0)
    float f1 = a[2]*x[1] + b[2]*y[1] + c[2]; // f20(x1,y1)
    float f2 = a[0]*x[2] + b[0]*y[2] + c[0]; // f01(x2,y2)
    // compute screen axes-aligned bounding box for triangle
    float bbox[2][2]; // for each x and y, store the min and max values
    // compute boundary box
    bbox[0][0] = min(min(x[0], x[1]), x[2]);
    bbox[0][1] = max(max(x[0], x[1]), x[2]);
    bbox[1][0] = min(min(y[0], y[1]), y[2]);
    bbox[1][1] = max(max(y[0], y[1]), y[2]);


    int left = (int) (bbox[0][0] - .5), right = (int) (bbox[0][1] + .5);
    int top= (int) (bbox[1][0] -.5), bottom = (int) (bbox[1][1] + .5);

    //ClipBBox(bbox, 0, w, 0, h);
    // entire boundary box off screen
    if (left > w)
        return;
    if (right < 0)
        return;
    if (top > h)
        return;
    if (bottom < 0)
        return;

    // boundary box partially off screen
    if (left < 0)
        left = 0;
    if (right > w)
        right = w;
    if (bottom > h)
        bottom = h;
    if (top < 0)
        top = 0;

    for (int v = top; v <= bottom; v++) {
        for (int u = left; u <= right; u++) {
            float wa = (a[1]*(float) u + b[1]*(float) v + c[1]) / f0;
            float wb = (a[2]*(float) u + b[2]*(float) v + c[2]) / f1;
            float wc = (a[0]*(float) u + b[0]*(float) v + c[0]) / f2;
            if (wa > 0 && wb > 0 && wc > 0) {
                V3 pCol = col[0]*wa + col[1]*wb + col[2]*wc;
                float ipZ = z[0]*wa + z[1]*wb + z[2]*wc;
                if (zb[(h - 1 - v)*w + u] < ipZ) {
                    zb[(h - 1 - v)*w + u] = ipZ;
                    Set(u, v, (int) pCol.GetColor());
                }
            }
        }
    }
}

// Draw triangle for Phong Shading / per pixel lighting
// Interpolate vertex normals across triangle and
// use normal at pixel to evaluate lighting equation
void FrameBuffer::DrawTriangle(float x[3], float y[3], float z[3], V3 n[3], V3 matColor, V3 ld,
                               float ka, V3 ambient, float specularExp, V3 vd) {
    float a[3], b[3], c[3]; // a, b, c for 3 edge expressions
    a[0] = y[0] - y[1]; b[0] = x[1] - x[0]; c[0] = x[0]*y[1] - x[1]*y[0];
    a[1] = y[1] - y[2]; b[1] = x[2] - x[1]; c[1] = x[1]*y[2] - x[2]*y[1];
    a[2] = y[2] - y[0]; b[2] = x[0] - x[2]; c[2] = x[2]*y[0] - x[0]*y[2];
    float f0 = a[1]*x[0] + b[1]*y[0] + c[1]; // f12(x0,y0)
    float f1 = a[2]*x[1] + b[2]*y[1] + c[2]; // f20(x1,y1)
    float f2 = a[0]*x[2] + b[0]*y[2] + c[0]; // f01(x2,y2)
    // compute screen axes-aligned bounding box for triangle
    float bbox[2][2]; // for each x and y, store the min and max values
    // compute boundary box
    bbox[0][0] = min(min(x[0], x[1]), x[2]);
    bbox[0][1] = max(max(x[0], x[1]), x[2]);
    bbox[1][0] = min(min(y[0], y[1]), y[2]);
    bbox[1][1] = max(max(y[0], y[1]), y[2]);


    int left = (int) (bbox[0][0] - .5), right = (int) (bbox[0][1] + .5);
    int top= (int) (bbox[1][0] -.5), bottom = (int) (bbox[1][1] + .5);

    //ClipBBox(bbox, 0, w, 0, h);
    // entire boundary box off screen
    if (left > w)
        return;
    if (right < 0)
        return;
    if (top > h)
        return;
    if (bottom < 0)
        return;

    // boundary box partially off screen
    if (left < 0)
        left = 0;
    if (right > w)
        right = w;
    if (bottom > h)
        bottom = h;
    if (top < 0)
        top = 0;

    for (int v = top; v <= bottom; v++) {
        for (int u = left; u <= right; u++) {
            float wa = (a[1]*(float) u + b[1]*(float) v + c[1]) / f0;
            float wb = (a[2]*(float) u + b[2]*(float) v + c[2]) / f1;
            float wc = (a[0]*(float) u + b[0]*(float) v + c[0]) / f2;

            if (wa > 0 && wb > 0 && wc > 0) {
                // interpolated normal
                V3 ipN = n[0]*wa + n[1]*wb + n[2]*wc;
                // interpolated z-value
                float ipZ = z[0]*wa + z[1]*wb + z[2]*wc;
                // reflected vector
                V3 rd = ld.Reflect(ipN);
                V3 specular = ld.Specular(vd, rd, specularExp, matColor);
                if (zb[(h - 1 - v)*w + u] < ipZ) {
                    zb[(h - 1 - v)*w + u] = ipZ;
                    float kd = (ld*-1.0f)*ipN;
                    kd = (kd < 0.0f) ? 0.0f : kd;
                    V3 pCol = matColor*(ka + (1.0f - ka)*kd) + ambient + specular;
                    Set(u, v, (int) pCol.GetColor());
                }
            }
        }
    }
}

// Shadows
void FrameBuffer::DrawTriangleWithShadow(float x[3], float y[3], float z[3], V3 n[3], V3 matColor, V3 ld,
                               float ka, V3 ambient, float specularExp, V3 vd, PPC *ppc, class Light *light) {
    float a[3], b[3], c[3]; // a, b, c for 3 edge expressions
    a[0] = y[0] - y[1]; b[0] = x[1] - x[0]; c[0] = x[0]*y[1] - x[1]*y[0];
    a[1] = y[1] - y[2]; b[1] = x[2] - x[1]; c[1] = x[1]*y[2] - x[2]*y[1];
    a[2] = y[2] - y[0]; b[2] = x[0] - x[2]; c[2] = x[2]*y[0] - x[0]*y[2];
    float f0 = a[1]*x[0] + b[1]*y[0] + c[1]; // f12(x0,y0)
    float f1 = a[2]*x[1] + b[2]*y[1] + c[2]; // f20(x1,y1)
    float f2 = a[0]*x[2] + b[0]*y[2] + c[0]; // f01(x2,y2)
    // compute screen axes-aligned bounding box for triangle
    float bbox[2][2]; // for each x and y, store the min and max values
    // compute boundary box
    bbox[0][0] = min(min(x[0], x[1]), x[2]);
    bbox[0][1] = max(max(x[0], x[1]), x[2]);
    bbox[1][0] = min(min(y[0], y[1]), y[2]);
    bbox[1][1] = max(max(y[0], y[1]), y[2]);


    int left = (int) (bbox[0][0] - .5), right = (int) (bbox[0][1] + .5);
    int top= (int) (bbox[1][0] -.5), bottom = (int) (bbox[1][1] + .5);

    //ClipBBox(bbox, 0, w, 0, h);
    // entire boundary box off screen
    if (left > w)
        return;
    if (right < 0)
        return;
    if (top > h)
        return;
    if (bottom < 0)
        return;

    // boundary box partially off screen
    if (left < 0)
        left = 0;
    if (right > w)
        right = w;
    if (bottom > h)
        bottom = h;
    if (top < 0)
        top = 0;

    for (int v = top; v <= bottom; v++) {
        for (int u = left; u <= right; u++) {
            float wa = (a[1]*(float) u + b[1]*(float) v + c[1]) / f0;
            float wb = (a[2]*(float) u + b[2]*(float) v + c[2]) / f1;
            float wc = (a[0]*(float) u + b[0]*(float) v + c[0]) / f2;

            if (wa > 0 && wb > 0 && wc > 0) {
                // interpolated normal
                V3 ipN = n[0]*wa + n[1]*wb + n[2]*wc;
                // interpolated z-value
                float ipZ = z[0]*wa + z[1]*wb + z[2]*wc;
                // reflected vector
                V3 rd = ld.Reflect(ipN);
                V3 specular = ld.Specular(vd, rd, specularExp, matColor);
                if (zb[(h - 1 - v)*w + u] < ipZ) {
                    zb[(h - 1 - v)*w + u] = ipZ;
                    float kd = (ld*-1.0f)*ipN;
                    kd = (kd < 0.0f) ? 0.0f : kd;
                    V3 pCol = matColor*(ka + (1.0f - ka)*kd) + ambient + specular;
                    V3 unproject;
                    ppc->Unproject(V3((float) u, (float) v, ipZ), unproject);
                    V3 smProject;
                    light->Project(unproject, smProject);
                    if (smProject[0] > 0 && smProject[0] < w && smProject[1] > 0 && smProject[1] < h) {
                        // if d - d_map < eps, illuminate
                        float bias = max(0.05 * (1.0 - ipN*ld), 0.005);
                        if (sm[(h - 1 - (int) smProject[1])*w + (int) smProject[0]] > smProject[2] + bias) {
                            Set(u, v, (int) V3(0.0f, 0.0f, 0.0f).GetColor());
                        } else{
                            Set(u, v, (int) pCol.GetColor());
                        }
                    } else {
                        Set(u, v, (int) pCol.GetColor());
                    }
                }
            }
        }
    }
}

// Draw triangle for Phong Shading / per pixel lighting
// Interpolate vertex normals across triangle and
// use normal at pixel to evaluate lighting equation
void FrameBuffer::DrawTriangle(float x[3], float y[3], float z[3], V3 n[3], V3 matColor, V3 ld,
                               float ka, V3 ambient, float specularExp, V3 vd, CubeMap *cubemap) {
    float a[3], b[3], c[3]; // a, b, c for 3 edge expressions
    a[0] = y[0] - y[1]; b[0] = x[1] - x[0]; c[0] = x[0]*y[1] - x[1]*y[0];
    a[1] = y[1] - y[2]; b[1] = x[2] - x[1]; c[1] = x[1]*y[2] - x[2]*y[1];
    a[2] = y[2] - y[0]; b[2] = x[0] - x[2]; c[2] = x[2]*y[0] - x[0]*y[2];
    float f0 = a[1]*x[0] + b[1]*y[0] + c[1]; // f12(x0,y0)
    float f1 = a[2]*x[1] + b[2]*y[1] + c[2]; // f20(x1,y1)
    float f2 = a[0]*x[2] + b[0]*y[2] + c[0]; // f01(x2,y2)
    // compute screen axes-aligned bounding box for triangle
    float bbox[2][2]; // for each x and y, store the min and max values
    // compute boundary box
    bbox[0][0] = min(min(x[0], x[1]), x[2]);
    bbox[0][1] = max(max(x[0], x[1]), x[2]);
    bbox[1][0] = min(min(y[0], y[1]), y[2]);
    bbox[1][1] = max(max(y[0], y[1]), y[2]);


    int left = (int) (bbox[0][0] - .5), right = (int) (bbox[0][1] + .5);
    int top= (int) (bbox[1][0] -.5), bottom = (int) (bbox[1][1] + .5);

    //ClipBBox(bbox, 0, w, 0, h);
    // entire boundary box off screen
    if (left > w)
        return;
    if (right < 0)
        return;
    if (top > h)
        return;
    if (bottom < 0)
        return;

    // boundary box partially off screen
    if (left < 0)
        left = 0;
    if (right > w)
        right = w;
    if (bottom > h)
        bottom = h;
    if (top < 0)
        top = 0;

    for (int v = top; v <= bottom; v++) {
        for (int u = left; u <= right; u++) {
            float wa = (a[1]*(float) u + b[1]*(float) v + c[1]) / f0;
            float wb = (a[2]*(float) u + b[2]*(float) v + c[2]) / f1;
            float wc = (a[0]*(float) u + b[0]*(float) v + c[0]) / f2;

            if (wa > 0 && wb > 0 && wc > 0) {
                // interpolated normal
                V3 ipN = n[0]*wa + n[1]*wb + n[2]*wc;
                // interpolated z-value
                float ipZ = z[0]*wa + z[1]*wb + z[2]*wc;
                // reflected vector
                V3 rd = vd.Reflect(ipN);
                V3 reflectiveCol;
                reflectiveCol.SetFromColor(cubemap->GetColor(rd));
                V3 specular = ld.Specular(vd, rd, specularExp, matColor);
                if (zb[(h - 1 - v)*w + u] < ipZ) {
                    zb[(h - 1 - v)*w + u] = ipZ;
                    float kd = (ld*-1.0f)*ipN;
                    kd = (kd < 0.0f) ? 0.0f : kd;
                    V3 pCol = matColor*(ka + (1.0f - ka)*kd) + ambient + specular + reflectiveCol;
                    Set(u, v, (int) pCol.GetColor());
                }
            }
        }
    }
}

void FrameBuffer::DrawDisk(V3 center, float r, unsigned int col) {

    int umin = (int)(center[0] - r);
    int umax = (int)(center[0] + r);
    int vmin = (int)(center[1] - r);
    int vmax = (int)(center[1] + r);
    center[2] = 0.0f;
    for (int v = vmin; v <= vmax; v++) {
        for (int u = umin; u <= umax; u++) {
            V3 pixCenter(.5f + (float)u, .5f + (float)v, 0.0f);
            V3 distVector = pixCenter - center;
            if (r*r < distVector * distVector)
                continue;
            SetGuarded(u, v, col);
        }
    }


}


void FrameBuffer::Set(int u, int v, int col) {

    pix[(h - 1 - v)*w + u] = col;

}


void FrameBuffer::SetGuarded(int u, int v, int col) {

    if (u < 0 || u > w - 1 || v < 0 || v > h - 1)
        return;
    Set(u, v, col);

}

void FrameBuffer::DrawSegment(V3 p0, V3 p1, unsigned int col) {

    V3 cv;
    cv.SetFromColor(col);
    DrawSegment(p0, p1, cv, cv);

}

void FrameBuffer::DrawSegment(V3 p0, V3 p1, V3 c0, V3 c1) {

    float maxSpan = (fabsf(p0[0] - p1[0]) < fabsf(p0[1] - p1[1])) ?
                    fabsf(p0[1] - p1[1]) : fabsf(p0[0] - p1[0]);
    int segsN = (int)maxSpan + 1;
    V3 currPoint = p0;
    V3 currColor = c0;
    V3 stepv = (p1 - p0) / (float)segsN;
    V3 stepcv = (c1 - c0) / (float)segsN;
    int si;
    for (si = 0;
         si <= segsN;
         si++, currPoint = currPoint + stepv, currColor = currColor + stepcv) {
        int u = (int)currPoint[0];
        int v = (int)currPoint[1];
        if (u < 0 || u > w - 1 || v < 0 || v > h - 1)
            continue;
        if (IsCloserThenSet(currPoint[2], u, v))
            SetGuarded(u, v, currColor.GetColor());
    }

}


// load a tiff image to pixel buffer
void FrameBuffer::LoadTiff(char* fname) {
    TIFF* in = TIFFOpen(fname, "r");
    if (in == NULL) {
        cerr << fname << " could not be opened" << endl;
        return;
    }

    int width, height;
    TIFFGetField(in, TIFFTAG_IMAGEWIDTH, &width);
    TIFFGetField(in, TIFFTAG_IMAGELENGTH, &height);
    if (w != width || h != height) {
        w = width;
        h = height;
        delete[] pix;
        pix = new unsigned int[w*h];
        size(w, h);
        glFlush();
        glFlush();
    }

    if (TIFFReadRGBAImage(in, w, h, pix, 0) == 0) {
        cerr << "failed to load " << fname << endl;
    }

    TIFFClose(in);
}

// save as tiff image
void FrameBuffer::SaveAsTiff(char *fname) {

    TIFF* out = TIFFOpen(fname, "w");

    if (out == NULL) {
        cerr << fname << " could not be opened" << endl;
        return;
    }

    TIFFSetField(out, TIFFTAG_IMAGEWIDTH, w);
    TIFFSetField(out, TIFFTAG_IMAGELENGTH, h);
    TIFFSetField(out, TIFFTAG_SAMPLESPERPIXEL, 4);
    TIFFSetField(out, TIFFTAG_BITSPERSAMPLE, 8);
    TIFFSetField(out, TIFFTAG_ORIENTATION, ORIENTATION_TOPLEFT);
    TIFFSetField(out, TIFFTAG_PLANARCONFIG, PLANARCONFIG_CONTIG);
    TIFFSetField(out, TIFFTAG_PHOTOMETRIC, PHOTOMETRIC_RGB);

    for (uint32 row = 0; row < (unsigned int)h; row++) {
        TIFFWriteScanline(out, &pix[(h - row - 1) * w], row);
    }

    TIFFClose(out);
}

void FrameBuffer::Render3DSegment(PPC *ppc, V3 v0, V3 v1, V3 c0, V3 c1) {
    V3 pv0, pv1;
    if (!ppc->Project(v0, pv0))
        return;
    if (!ppc->Project(v1, pv1))
        return;
    DrawSegment(pv0, pv1, c0, c1);
}

void FrameBuffer::Render3DPoint(PPC *ppc, V3 p, V3 c, float psize) {
    V3 pv;
    if (!ppc->Project(p, pv))
        return;
    DrawDisk(pv, psize, c.GetColor());
}


int FrameBuffer::IsCloserThenSet(float currz, int u, int v) {

    float zbz = zb[(h - 1 - v)*w + u];
    if (zbz > currz)
        return 0;
    zb[(h - 1 - v)*w + u] = currz;
    return 1;

}

int FrameBuffer::InShadowMap(int u, int v) {
    if (sm[(h - 1 - v)*w + u] > 0.0f) {
        return 1;
    }
    return 0;
}

// texture lookup
unsigned int FrameBuffer::LookUpNN(float s, float t) {
    if (s < 0.0f || t < 0.0f)
        return 0xFFFFFF00;

    float sf = s - (float)((int)s);
    float tf = t - (float)((int)t);

    int u = (int)(sf * (float)w);
    int v = (int)(tf * (float)h);
    // results in a texture sample
    return Get(u, v);
}

unsigned int FrameBuffer::LookUpBilinear(float s, float t) {
    int u_p = s * w - 0.5;
    int v_p = t * h - 0.5;
    int iu0 = floor(u_p);
    int iu1 = iu0 + 1;
    int iv0 = floor(v_p);
    int iv1 = iv0 + 1;
    int a_u = (iu1 - u_p);
    int b_u = 1 - a_u;
    int a_v = (iv1 - v_p);
    int b_v = 1 - a_v;
    return a_u * a_v * Get(iu0, iv0) + a_u * b_v * Get(iu0, iv1) +
        b_u * a_v * Get(iu1, iv0) + b_u * b_v * Get(iu1, iv1);
}

unsigned int FrameBuffer::Get(int u, int v) {

    return pix[(h - 1 - v)*w + u];

}

void FrameBuffer::SetTextureImage(char *fname) {
    int width, height, channels;
    unsigned char *img = stbi_load(fname, &width, &height, &channels, 0);
    if (img == NULL) {
        printf("Error in loading the image\n");
        exit(1);
        printf("Loaded image with a width of %dpx, a height of %dpx and %d channels\n", width, height, channels);
    }
    w = width;
    h = height;
    //printf("Loaded image with a width of %dpx, a height of %dpx and %d channels\n", width, height, channels);
    for (int v = 0; v < h; v++) {
        for (int u = 0; u < w; u++) {
            unsigned bytePerPixel = channels;
            unsigned char* pixelOffset = img + (u + width * v) * bytePerPixel;
            unsigned char r = pixelOffset[0];
            unsigned char g = pixelOffset[1];
            unsigned char b = pixelOffset[2];
            unsigned int col =  0xFF000000 + r * 256 *256 + g *256 + b;
            Set(u, v, (int) col);
        }
    }
}

void FrameBuffer::TextureLookupWrap(float u, float v) {
    int i = round(u * w - 0.5);
    int j = round(v * h - 0.5);
    LookUpNN(i % w, j % h);
}