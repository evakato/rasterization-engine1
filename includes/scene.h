#pragma once

#include "gui.h"
#include "framebuffer.h"
#include "ppc.h"
#include "tm.h"
#include "light.h"
#include "cubemap.h"

class Scene {
public:

    GUI *gui;
    FrameBuffer *fb, *fb3, *fbs, *hwfb;
    PPC *ppc, *ppc3;
    Light *light;
    TM *tms;
    V3 hwClearColor;
    int tmsN;
    int shadingMode;
    int textureMode;
    float ambientFactor;
    float specularExp;
    FrameBuffer *textures;
    int texturesN;
    int needInitHW;
    Scene();
    void RenderHW();
    void Render(PPC *renderPPC, FrameBuffer *renderFB);
    void RenderSM2(PPC *renderPPC, FrameBuffer *renderFB);
    void RenderSM3(PPC *renderPPC, FrameBuffer *renderFB);
    void RenderShadow(PPC *renderPPC, FrameBuffer *renderFB);
    void RenderTexture(PPC *renderPPC, FrameBuffer *renderFB);
    void RenderEnvMap(PPC *renderPPC, FrameBuffer *renderFB);
    void Render();
    void HWTexture();
    void DBG();
    void Right();
    void Left();
    void Up();
    void Down();
    void Front();
    void Back();
    void RotateX();
    void RotateXn();
    void Tilt();
    void TiltN();
    void Pan();
    void PanN();
    void ZoomIn();
    void ZoomOut();
    void LightR();
    void LightL();
    void LightU();
    void LightD();
    void SM1();
    void SM2();
    void SM3();
    void RenderLSM(FrameBuffer *rfb);
    void EnvMap();
    void AmbientU();
    void AmbientD();
    void SpecularU();
    void SpecularD();
    void Shadow();
    void RotateMesh();
    void ReposLight();
    void Tile();
    void Mirror();
};

extern Scene *scene;