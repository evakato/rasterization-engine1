#pragma once

#include "V3.h"

class PPC;
class FrameBuffer;
class Light;
class CubeMap;

class TM {
public:
    V3 *verts;
    int vertsN;
    V3 *cols, *normals, *tcs;
    unsigned int *tris;
    int trisN;
    FrameBuffer *texture;
    TM() : verts(0), vertsN(0), tris(0), trisN(0), cols(0), normals(0), tcs(0), texture(0)  {};
    void SetTriangle(V3 v0, V3 v1, V3 v2);
    void SetAsAACube(V3 cc, float sideLength);
    void LoadBin(char *fname);
    void RenderAsPoints(int psize, PPC *ppc, FrameBuffer *fb);
    void RenderWireFrame(PPC *ppc, FrameBuffer *fb);
    void RenderShadowMap(Light *light, FrameBuffer *fb);
    void RenderFill(PPC *ppc, FrameBuffer *fb);
    void RenderFill(PPC *ppc, FrameBuffer *fb, V3 matColor, V3 ld, float ka, float ambientFactor, float specularExp);
    void RenderFillWithShadow(PPC *ppc, FrameBuffer *fb, V3 matColor, V3 ld, float ka, float ambientFactor, float specularExp, class Light *light);
    void RenderFillTexture(PPC *ppc, FrameBuffer *fb, int textureMode);
    void RenderFill(PPC *ppc, FrameBuffer *fb, V3 matColor, V3 ld, float ka, float ambientFactor, float specularExp, CubeMap *cubemap);
    V3 GetCenter();
    void Translate(V3 tv);
    void SetCenter(V3 newCenter);
    void Rotate(V3 aO, V3 aD, float theta);
    void Light(V3 matColor, float ka, V3 ld, float ambientFactor);
    void VisualizeVertexNormals(PPC *ppc, FrameBuffer *fb, float vlength);
    void SetUnshared(TM *tm);
    void SetAsCopy(TM *tm);
    void Explode(float t);
    void SetTexturedRectangle(float rectw, float recth);
    void SetQuad(V3 v1, V3 v2, V3 v3, V3 v4);
    void RenderHW();
    void RenderHWTexture();
    void HWCube();
};