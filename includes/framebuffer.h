#pragma once

#include <FL/Fl.H>
#include <FL/Fl_Gl_Window.H>
#include <GL/glut.h>

#include "V3.h"
#include "scene.h"

class PPC;
class CubeMap;

class FrameBuffer : public Fl_Gl_Window {
public:
    unsigned int *pix; // pixel array
    float *zb; // z buffer to resolve visibility
    float *sm; // shadow map
    int w, h;
    int ishw; // is 1 when hardware framebuffer
    FrameBuffer(int u0, int v0, int _w, int _h);
    void draw();
    void KeyboardHandle();
    int handle(int guievent);
    void SetBGR(unsigned int bgr);
    void Set(int u, int v, int col);
    void SetGuarded(int u, int v, int col);
    void SetChecker(unsigned int col0, unsigned int col1, int csize);
    void ViewShadowMap(float *some_sm);
    void DrawAARectangle(V3 tlc, V3 brc, unsigned int col);
    void SetShadow(float x[3], float y[3], float z[3]);
    void DrawTriangle(float x[3], float y[3], float z[3], V3 c[3]);
    void DrawTriangle(float x[3], float y[3], float z[3], V3 n[3], V3 matColor, V3 ld, float ka, V3 ambient, float specularExp, V3 vd);
    void DrawTriangleWithShadow(float x[3], float y[3], float z[3], V3 n[3], V3 matColor, V3 ld, float ka, V3 ambient, float specularExp, V3 vd, PPC *ppc, class Light *light);
    void DrawTriangle(float x[3], float y[3], float z[3], V3 n[3], V3 matColor, V3 ld, float ka, V3 ambient, float specularExp, V3 vd, CubeMap *cubemap);
    void DrawDisk(V3 center, float r, unsigned int col);
    void DrawSegment(V3 p0, V3 p1, unsigned int col);
    void DrawSegment(V3 p0, V3 p1, V3 c0, V3 c1);
    void Render3DSegment(PPC *ppc, V3 v0, V3 v1, V3 c0, V3 c1);
    void Render3DPoint(PPC *ppc, V3 p, V3 c, float psize);
    void LoadTiff(char* fname);
    void SaveAsTiff(char* fname);
    void SetZB(float zf);
    void SetSM(float sm);
    int IsCloserThenSet(float currz, int u, int v);
    int InShadowMap(int u, int v);
    unsigned int LookUpNN(float s, float t);
    unsigned int LookUpBilinear(float s, float t);
    unsigned int Get(int u, int v);
    void SetTextureImage(char *fname);
    void TextureLookupWrap(float u, float v);
};