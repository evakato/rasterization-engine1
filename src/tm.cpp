#include "tm.h"
#include "cubemap.h"
#include "ppc.h"
#include "framebuffer.h"
#include "light.h"
#include "M33.h"

using namespace std;

#include <fstream>
#include <iostream>

#include <FL/Fl.H>
#include <FL/Fl_Gl_Window.H>
#include <GL/glut.h>
#include "stb_image.h"

void TM::SetTriangle(V3 v0, V3 v1, V3 v2) {
    vertsN = 3;
    verts = new V3[vertsN];
    verts[0] = v0;
    verts[1] = v1;
    verts[2] = v2;
    trisN = 1;
    tris = new unsigned int[3];
    tris[0] = 0;
    tris[1] = 1;
    tris[2] = 2;
    cols = new V3[vertsN];
    cols[0] =
    cols[1] =
    cols[2] = V3(1.0f, 1.0f, 1.0f);
    normals = new V3[vertsN];
    normals[0] =
    normals[1] =
    normals[2] = ((v1 - v0) ^ (v2 - v0)).UnitVector();
    tcs = new V3[vertsN];
    tcs[0] = V3(0.0f, 0.0f, 0.0f);
    tcs[1] = V3(1.0f, 0.0f, 0.0f);
    tcs[2] = V3(0.5f, 1.0f, 0.0f);
}

void TM::SetAsAACube(V3 cc, float sideLength) {

    vertsN = 8;
    verts = new V3[vertsN];
    float sl2 = sideLength / 2.0f;
    verts[0] = cc + V3(-sl2, +sl2, +sl2);
    verts[1] = cc + V3(-sl2, -sl2, +sl2);
    verts[2] = cc + V3(+sl2, -sl2, +sl2);
    verts[3] = cc + V3(+sl2, +sl2, +sl2);
    verts[4] = cc + V3(-sl2, +sl2, -sl2);
    verts[5] = cc + V3(-sl2, -sl2, -sl2);
    verts[6] = cc + V3(+sl2, -sl2, -sl2);
    verts[7] = cc + V3(+sl2, +sl2, -sl2);

    trisN = 12;
    tris = new unsigned int[trisN*3];
    int tri = 0;
    tris[3 * tri + 0] = 0; // tris[0] = 0;
    tris[3 * tri + 1] = 1;
    tris[3 * tri + 2] = 2;
    tri++;
    tris[3 * tri + 0] = 2;
    tris[3 * tri + 1] = 3;
    tris[3 * tri + 2] = 0;
    tri++;

    tris[3 * tri + 0] = 3;
    tris[3 * tri + 1] = 2;
    tris[3 * tri + 2] = 6;
    tri++;
    tris[3 * tri + 0] = 6;
    tris[3 * tri + 1] = 7;
    tris[3 * tri + 2] = 3;
    tri++;

    tris[3 * tri + 0] = 7;
    tris[3 * tri + 1] = 6;
    tris[3 * tri + 2] = 5;
    tri++;
    tris[3 * tri + 0] = 5;
    tris[3 * tri + 1] = 4;
    tris[3 * tri + 2] = 7;
    tri++;

    tris[3 * tri + 0] = 4;
    tris[3 * tri + 1] = 5;
    tris[3 * tri + 2] = 1;
    tri++;
    tris[3 * tri + 0] = 1;
    tris[3 * tri + 1] = 0;
    tris[3 * tri + 2] = 4;
    tri++;


    tris[3 * tri + 0] = 1;
    tris[3 * tri + 1] = 5;
    tris[3 * tri + 2] = 6;
    tri++;
    tris[3 * tri + 0] = 6;
    tris[3 * tri + 1] = 2;
    tris[3 * tri + 2] = 1;
    tri++;

    tris[3 * tri + 0] = 4;
    tris[3 * tri + 1] = 0;
    tris[3 * tri + 2] = 3;
    tri++;
    tris[3 * tri + 0] = 3;
    tris[3 * tri + 1] = 7;
    tris[3 * tri + 2] = 4;
    tri++;

    cols = new V3[vertsN];
    cols[0] =
    cols[1] =
    cols[2] =
    cols[3] =
    cols[4] =
    cols[5] =
    cols[6] =
    cols[7] = V3(1.0f, 1.0f, 1.0f);

    tcs = new V3[vertsN];
    tcs[0] = V3(0.0f, 1.0f, 0.0f);
    tcs[1] = V3(0.0f, 0.0f, 0.0f);
    tcs[2] = V3(1.0f, 0.0f, 0.0f);
    tcs[3] = V3(1.0f, 1.0f, 0.0f);
    tcs[4] = V3(0.0f, 1.0f, 0.0f);
    tcs[5] = V3(0.0f, 0.0f, 0.0f);
    tcs[6] = V3(1.0f, 0.0f, 0.0f);
    tcs[7] = V3(1.0f, 1.0f, 0.0f);
}

#if 0
4      7

0     3
    5      6
1     2
#endif

void TM::LoadBin(char *fname) {

    ifstream ifs(fname, ios::binary);
    if (ifs.fail()) {
        cerr << "INFO: cannot open file: " << fname << endl;
        return;
    }

    ifs.read((char*)&vertsN, sizeof(int));
    char yn;
    ifs.read(&yn, 1); // always xyz
    if (yn != 'y') {
        cerr << "INTERNAL ERROR: there should always be vertex xyz data" << endl;
        return;
    }
    if (verts)
        delete verts;
    verts = new V3[vertsN];

    ifs.read(&yn, 1); // cols 3 floats
    normals = 0;
    if (cols)
        delete cols;
    cols = 0;
    if (yn == 'y') {
        cols = new V3[vertsN];
    }

    ifs.read(&yn, 1); // normals 3 floats
    if (normals)
        delete normals;
    normals = 0;
    if (yn == 'y') {
        normals = new V3[vertsN];
    }

    ifs.read(&yn, 1); // texture coordinates 2 floats
    float *tcs = 0; // don't have texture coordinates for now
    if (tcs)
        delete tcs;
    tcs = 0;
    if (yn == 'y') {
        tcs = new float[vertsN * 2];
    }


    ifs.read((char*)verts, vertsN * 3 * sizeof(float)); // load verts

    if (cols) {
        ifs.read((char*)cols, vertsN * 3 * sizeof(float)); // load cols
    }

    if (normals)
        ifs.read((char*)normals, vertsN * 3 * sizeof(float)); // load normals

    if (tcs)
        ifs.read((char*)tcs, vertsN * 2 * sizeof(float)); // load texture coordinates

    ifs.read((char*)&trisN, sizeof(int));
    if (tris)
        delete tris;
    tris = new unsigned int[trisN * 3];
    ifs.read((char*)tris, trisN * 3 * sizeof(unsigned int)); // read tiangles

    ifs.close();

    cerr << "INFO: loaded " << vertsN << " verts, " << trisN << " tris from " << endl << "      " << fname << endl;
    cerr << "      xyz " << ((cols) ? "rgb " : "") << ((normals) ? "nxnynz " : "") << ((tcs) ? "tcstct " : "") << endl;

}


void TM::RenderAsPoints(int psize, PPC *ppc, FrameBuffer *fb) {

    for (int vi = 0; vi < vertsN; vi++) {
        V3 pp;
        if (!ppc->Project(verts[vi], pp))
            continue;
        fb->DrawDisk(pp, (float)psize, 0xFF000000);
    }

}

void TM::RenderWireFrame(PPC *ppc, FrameBuffer *fb) {
    // loop through each triangle
    for (int tri = 0; tri < trisN; tri++) {
        for (int ei = 0; ei < 3; ei++) {
            // get corresponding vertex for triangle
            V3 v0 = verts[tris[3 * tri + ei]];
            V3 v1 = verts[tris[3 * tri + (ei + 1) % 3]];
            V3 c0 = cols[tris[3 * tri + ei]];
            V3 c1 = cols[tris[3 * tri + (ei + 1) % 3]];
            V3 pv0, pv1;
            if (!ppc->Project(v0, pv0))
                continue;
            if (!ppc->Project(v1, pv1))
                continue;
            fb->DrawSegment(pv0, pv1, c0, c1);
        }
    }
}

void TM::RenderShadowMap(class Light *light, FrameBuffer *fb) {
    for (int tri = 0; tri < trisN; tri++) {
        V3 v0 = verts[tris[3 * tri]];
        V3 v1 = verts[tris[3 * tri + 1]];
        V3 v2 = verts[tris[3 * tri + 2]];
        V3 pv0, pv1, pv2;
        if (!light->Project(v0, pv0))
            continue;
        if (!light->Project(v1, pv1))
            continue;
        if (!light->Project(v2, pv2))
            continue;
        float x[3]; x[0] = pv0[0]; x[1] = pv1[0]; x[2] = pv2[0];
        float y[3]; y[0] = pv0[1]; y[1] = pv1[1]; y[2] = pv2[1];
        float z[3]; z[0] = pv0[2]; z[1] = pv1[2]; z[2] = pv2[2];
        fb->SetShadow(x, y, z);
    }
}

// Filled mode render with color interpolation
void TM::RenderFill(PPC *ppc, FrameBuffer *fb) {
    for (int tri = 0; tri < trisN; tri++) {
            V3 v0 = verts[tris[3 * tri]];
            V3 v1 = verts[tris[3 * tri + 1]];
            V3 v2 = verts[tris[3 * tri + 2]];
            V3 c0 = cols[tris[3 * tri]];
            V3 c1 = cols[tris[3 * tri + 1]];
            V3 c2 = cols[tris[3 * tri + 2]];
            V3 pv0, pv1, pv2;
            if (!ppc->Project(v0, pv0))
                continue;
            if (!ppc->Project(v1, pv1))
                continue;
            if (!ppc->Project(v2, pv2))
                continue;
            float x[3]; x[0] = pv0[0]; x[1] = pv1[0]; x[2] = pv2[0];
            float y[3]; y[0] = pv0[1]; y[1] = pv1[1]; y[2] = pv2[1];
            float z[3]; z[0] = pv0[2]; z[1] = pv1[2]; z[2] = pv2[2];
            V3 c[3]; c[0] = c0; c[1] = c1; c[2] = c2;
        //c[0] = V3(pv0[2], pv0[2], pv0[2])/10.0f;
        //c[1] = V3(pv0[2], pv0[2], pv0[2])/10.0f;
        //c[2] = V3(pv0[2], pv0[2], pv0[2])/10.0f;
        //c[1]= V3(pv1[2], pv1[2], pv1[2])/10.0f;
        //c[2] = V3(pv2[2], pv2[2], pv2[2])/10.0f;
            fb->DrawTriangle(x, y, z, c);
    }
}

// Filled mode render with Phong shading instead of color interpolation
void TM::RenderFill(PPC *ppc, FrameBuffer *fb, V3 matColor, V3 ld, float ka, float ambientFactor, float specularExp) {
    for (int tri = 0; tri < trisN; tri++) {
        // get vertices and normals
        V3 vs[3]; V3 ns[3];
        for (int vi = 0; vi < 3; vi++) {
            vs[vi] = verts[tris[3 * tri + vi]];
            ns[vi] = normals[tris[3 * tri + vi]];
        }

        // project vertices
        V3 pvs[3];
        int needContinue = 0;
        for (int vi = 0; vi < 3; vi++) {
            if (!ppc->Project(vs[vi], pvs[vi])) {
                needContinue = 1;
                break;
            }
        }
        if (needContinue)
            continue;

        float x[3]; x[0] = pvs[0][0]; x[1] = pvs[1][0]; x[2] = pvs[2][0];
        float y[3]; y[0] = pvs[0][1]; y[1] = pvs[1][1]; y[2] = pvs[2][1];
        float z[3]; z[0] = pvs[0][2]; z[1] = pvs[1][2]; z[2] = pvs[2][2];
        V3 ambient = matColor * ambientFactor;

        fb->DrawTriangle(x, y, z, ns, matColor, ld, ka, ambient, specularExp, ppc->GetVD());
    }
}

// Filled mode render with Phong shading and shadows
void TM::RenderFillWithShadow(PPC *ppc, FrameBuffer *fb, V3 matColor, V3 ld, float ka, float ambientFactor, float specularExp, class Light *light) {
    for (int tri = 0; tri < trisN; tri++) {
        // get vertices and normals
        V3 vs[3]; V3 ns[3];
        for (int vi = 0; vi < 3; vi++) {
            vs[vi] = verts[tris[3 * tri + vi]];
            ns[vi] = normals[tris[3 * tri + vi]];
        }

        // project vertices
        V3 pvs[3];
        int needContinue = 0;
        for (int vi = 0; vi < 3; vi++) {
            if (!ppc->Project(vs[vi], pvs[vi])) {
                needContinue = 1;
                break;
            }
        }
        if (needContinue)
            continue;

        float x[3]; x[0] = pvs[0][0]; x[1] = pvs[1][0]; x[2] = pvs[2][0];
        float y[3]; y[0] = pvs[0][1]; y[1] = pvs[1][1]; y[2] = pvs[2][1];
        float z[3]; z[0] = pvs[0][2]; z[1] = pvs[1][2]; z[2] = pvs[2][2];
        V3 ambient = matColor * ambientFactor;

        fb->DrawTriangleWithShadow(x, y, z, ns, matColor, ld, ka, ambient, specularExp, ppc->GetVD(), ppc, light);
    }
}

void TM::RenderFillTexture(PPC *ppc, FrameBuffer *fb) {

    for (int tri = 0; tri < trisN; tri++) {
        V3 vs[3], cs[3], ns[3], ttcs[3];
        for (int vi = 0; vi < 3; vi++) {
            vs[vi] = verts[tris[3 * tri + vi]];
            cs[vi] = cols[tris[3 * tri + vi]];
            ns[vi] = normals[tris[3 * tri + vi]];
            if (tcs)
                ttcs[vi] = tcs[tris[3 * tri + vi]];
        }

        // project vertices
        V3 pvs[3];
        int needContinue = 0;
        for (int vi = 0; vi < 3; vi++) {
            if (!ppc->Project(vs[vi], pvs[vi])) {
                needContinue = 1;
                break;
            }
        }
        if (needContinue)
            continue;

        // clip axis aligned bounding box
        AABB aabb(pvs[0]);
        aabb.AddPoint(pvs[1]);
        aabb.AddPoint(pvs[2]);
        if (!aabb.ClipWithFrame(fb->w, fb->h))
            continue;
        int top = (int)(aabb.minv[1] + 0.5f);
        int bottom = (int)(aabb.maxv[1] - 0.5f);
        int left = (int)(aabb.minv[0] + 0.5f);
        int right = (int)(aabb.maxv[0] - 0.5f);

        // setup edge equations
        M33 eeqs;
        eeqs[0].SetAsEdgeEquation(pvs[0], pvs[1], pvs[2]);
        eeqs[1].SetAsEdgeEquation(pvs[1], pvs[2], pvs[0]);
        eeqs[2].SetAsEdgeEquation(pvs[2], pvs[0], pvs[1]);

        // setup screen space interpolation
        M33 ssim; ssim[0] = pvs[0]; ssim[1] = pvs[1]; ssim[2] = pvs[2];
        ssim.SetColumn(2, V3(1.0f, 1.0f, 1.0f)); ssim = ssim.Inverted();
        V3 le1w = ssim * V3(pvs[0][2], pvs[1][2], pvs[2][2]);
        M33 colm; colm[0] = cs[0]; colm[1] = cs[1]; colm[2] = cs[2];
        M33 lecols = (ssim * colm).Transposed();
        M33 nm; nm[0] = ns[0]; nm[1] = ns[1]; nm[2] = ns[2];
        M33 lenormals = (ssim * nm).Transposed();
        M33 tcm; tcm[0] = ttcs[0]; tcm[1] = ttcs[1]; tcm[2] = ttcs[2];
        M33 letcs = (ssim * tcm).Transposed();

        for (int v = top; v <= bottom; v++) {
            for (int u = left; u <= right; u++) {
                V3 pixv(.5f + (float)u, .5f + (float)v, 1.0f);
                V3 svs = eeqs*pixv;
                if (svs[0] < 0.0f || svs[1] < 0.0f || svs[2] < 0.0f)
                    continue;
                float currz = le1w * pixv;
                if (fb->IsCloserThenSet(currz, u, v)) {
                    V3 currCol = lecols*pixv;
                    V3 currNormal = (lenormals*pixv).UnitVector();
                    currCol = currCol.Light(V3(1.0f, 1.0f, 1.0f), 0.1f,
                                            V3(0.0f, 0.0f, -1.0f), currNormal);
                    fb->Set(u, v, currCol.GetColor());
                    if (texture) {
                        // interpolated texture coordinates
                        V3 currtcs = letcs*pixv;
                        //fb->Set(u, v, texture->LookUpNN(currtcs[0], currtcs[1]));
                        fb->Set(u, v, (int) texture->LookUpBilinear(currtcs[0], currtcs[1]));
                    }
                }
            }
        }
    }

}

// Filled mode render with Phong shading instead of color interpolation
void TM::RenderFill(PPC *ppc, FrameBuffer *fb, V3 matColor, V3 ld, float ka, float ambientFactor, float specularExp, CubeMap *cubemap) {
    for (int tri = 0; tri < trisN; tri++) {
        // get vertices and normals
        V3 vs[3]; V3 ns[3];
        for (int vi = 0; vi < 3; vi++) {
            vs[vi] = verts[tris[3 * tri + vi]];
            ns[vi] = normals[tris[3 * tri + vi]];
        }

        // project vertices
        V3 pvs[3];
        int needContinue = 0;
        for (int vi = 0; vi < 3; vi++) {
            if (!ppc->Project(vs[vi], pvs[vi])) {
                needContinue = 1;
                break;
            }
        }
        if (needContinue)
            continue;

        float x[3]; x[0] = pvs[0][0]; x[1] = pvs[1][0]; x[2] = pvs[2][0];
        float y[3]; y[0] = pvs[0][1]; y[1] = pvs[1][1]; y[2] = pvs[2][1];
        float z[3]; z[0] = pvs[0][2]; z[1] = pvs[1][2]; z[2] = pvs[2][2];
        V3 ambient = matColor * ambientFactor;

        fb->DrawTriangle(x, y, z, ns, matColor, ld, ka, ambient, specularExp, ppc->GetVD(), cubemap);
    }
}

V3 TM::GetCenter() {

    V3 ret(0.0f, 0.0f, 0.0f);
    for (int vi = 0; vi < vertsN; vi++)
        ret = ret + verts[vi];
    ret = ret / (float)vertsN;
    return ret;

}

void TM::Rotate(V3 aO, V3 aD, float theta) {

    for (int vi = 0; vi < vertsN; vi++) {
        verts[vi] = verts[vi].RotateThisPoint(aO, aD, theta);
    }

}


void TM::Translate(V3 tv) {

    for (int vi = 0; vi < vertsN; vi++)
        verts[vi] = verts[vi] + tv;

}

void TM::SetCenter(V3 newCenter) {

    V3 center = GetCenter();
    V3 tv = newCenter - center;
    Translate(tv);

}

// Gouraud shading (per vertex)
// For each vertex, the color is computed based on the positions of
// the camera, the lights, and the vertex.
// I'm assuming we don't keep track of the camera position b/c
// we are shading in eyespace.
void TM::Light(V3 matColor, float ka, V3 ld, float ambientFactor) {
    if (!normals) {
        cerr << "INFO: need normals" << endl;
        return;
    }
    V3 ambient= matColor * ambientFactor;
    for (int vi = 0; vi < vertsN; vi++) {
        cols[vi] = verts[vi].Light(matColor, ka, ld, normals[vi]) + ambient;
    }
}


void TM::VisualizeVertexNormals(PPC *ppc, FrameBuffer *fb, float vlength) {

    if (!normals)
        return;
    for (int vi = 0; vi < vertsN; vi++) {
        fb->Render3DSegment(ppc, verts[vi], verts[vi] + normals[vi] * vlength,
                            V3(0.0f, 0.0f, 0.0f), V3(1.0f, 0.0f, 0.0f));
    }
    fb->redraw();

}

void TM::SetUnshared(TM *tm) {

    trisN = tm->trisN;
    vertsN = tm->trisN * 3;
    verts = new V3[vertsN];
    tris = new unsigned int[trisN*3];
    if (tm->cols)
        cols = new V3[vertsN];
    if (tm->normals)
        normals = new V3[vertsN];

    for (int ti = 0; ti < tm->trisN; ti++) {
        verts[3 * ti + 0] = tm->verts[tm->tris[ti * 3 + 0]];
        verts[3 * ti + 1] = tm->verts[tm->tris[ti * 3 + 1]];
        verts[3 * ti + 2] = tm->verts[tm->tris[ti * 3 + 2]];
        if (cols) {
            cols[3 * ti + 0] = tm->cols[tm->tris[ti * 3 + 0]];
            cols[3 * ti + 1] = tm->cols[tm->tris[ti * 3 + 1]];
            cols[3 * ti + 2] = tm->cols[tm->tris[ti * 3 + 2]];
        }
        if (normals) {
            normals[3 * ti + 0] = tm->normals[tm->tris[ti * 3 + 0]];
            normals[3 * ti + 1] = tm->normals[tm->tris[ti * 3 + 1]];
            normals[3 * ti + 2] = tm->normals[tm->tris[ti * 3 + 2]];
        }
        tris[3 * ti + 0] = 3 * ti + 0;
        tris[3 * ti + 1] = 3 * ti + 1;
        tris[3 * ti + 2] = 3 * ti + 2;
    }


}

void TM::SetAsCopy(TM *tm) {

    vertsN = tm->vertsN;
    trisN = tm->trisN;
    verts = new V3[vertsN];
    for (int vi = 0; vi < vertsN; vi++)
        verts[vi] = tm->verts[vi];
    tris = new unsigned int[3 * trisN];
    for (int ti = 0; ti < trisN*3; ti++)
        tris[ti] = tm->tris[ti];
    if (tm->cols) {
        cols = new V3[vertsN];
        for (int vi = 0; vi < vertsN; vi++)
            cols[vi] = tm->cols[vi];
    }
    if (tm->normals) {
        normals = new V3[vertsN];
        for (int vi = 0; vi < vertsN; vi++)
            normals[vi] = tm->normals[vi];
    }

}

void TM::Explode(float t) {
    for (int ti = 0; ti < trisN; ti++) {
        unsigned int inds[3];
        inds[0] = tris[3 * ti + 0];
        inds[1] = tris[3 * ti + 1];
        inds[2] = tris[3 * ti + 2];
        // v = (v1-v0) ^ (v2-v0)
        V3 n = (verts[inds[1]] - verts[inds[0]]) ^
               (verts[inds[2]] - verts[inds[0]]);
        n = n.UnitVector();
        verts[inds[0]] = verts[inds[0]] + n*t;
        verts[inds[1]] = verts[inds[1]] + n*t;
        verts[inds[2]] = verts[inds[2]] + n*t;
    }
}

// vertical rectangle in x0y plane, with O as center
void TM::SetTexturedRectangle(float rectw, float recth) {

    trisN = 2;
    vertsN = 4;
    verts = new V3[vertsN];
    cols = new V3[vertsN];
    normals = new V3[vertsN];
    tcs = new V3[vertsN];

//0(0, 0)       3 (1, 0)
//	   \
//		   \
//1(0, 1)       2 (1, 1)

    verts[0] = V3(-rectw / 2.0f, recth / 2.0f, 0.0f);
    verts[1] = V3(-rectw / 2.0f, -recth / 2.0f, 0.0f);
    verts[2] = V3(rectw / 2.0f, -recth / 2.0f, 0.0f);
    verts[3] = V3(rectw / 2.0f, recth / 2.0f, 0.0f);

    normals[0] =
    normals[1] =
    normals[2] =
    normals[3] = V3(0.0f, 0.0f, 1.0f);

    cols[0] = cols[1] = cols[2] = cols[3] = V3(1.0f, 0.0f, 0.0f);

    float tc = 1.0f;
    tcs[0] = V3(0.0f, 0.0f, 0.0f);
    tcs[1] = V3(0.0f, tc, 0.0f);
    tcs[2] = V3(tc, tc, 0.0f);
    tcs[3] = V3(tc, 0.0f, 0.0f);

}

void TM::RenderHW() {

    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);

    glVertexPointer(3, GL_FLOAT, 0, verts);
    glColorPointer(3, GL_FLOAT, 0, cols);
    glDrawElements(GL_TRIANGLES, 3 * trisN, GL_UNSIGNED_INT, tris);

    glDisableClientState(GL_COLOR_ARRAY);
    glDisableClientState(GL_VERTEX_ARRAY);

}

void TM::RenderHWTexture() {
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);

    glVertexPointer(3, GL_FLOAT, 0, verts);
    glColorPointer(3, GL_FLOAT, 0, cols);
    glTexCoordPointer(3, GL_FLOAT, 0, tcs);
    glDrawElements(GL_TRIANGLES, 3 * trisN, GL_UNSIGNED_INT, tris);

    glDisableClientState(GL_COLOR_ARRAY);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
}