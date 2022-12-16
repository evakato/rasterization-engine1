#include "scene.h"

#include "V3.h"
#include "M33.h"
#include "tm.h"
#include "stb_image.h"

Scene *scene;

using namespace std;

#include <iostream>
#include <fstream>
#include <FL/glu.h>

Scene::Scene() {

    gui = new GUI();
    gui->show();

    int u0 = 16;
    int v0 = 40;
    int h = 400;
    int w = 600;
    fb = new FrameBuffer(u0, v0, w, h);
    fb->position(u0, v0);
    fb->label("first person");
    fb->show();
    fb->SetBGR(0xFF0000FF);
    fb->redraw();

    fb3 = new FrameBuffer(u0, v0, w, h);
    fb3->position(u0+fb->w+u0, v0);
    fb3->label("3rd person");
    fb3->show();
    fb3->SetBGR(0xFFFF0000);
    fb3->redraw();

    hwClearColor = V3(0.0f, 0.0f, 0.5f);
    hwfb = new FrameBuffer(u0, v0, w, h);
    hwfb->position(u0 + fb->w + u0, v0);
    hwfb->label("first person HW");
    hwfb->ishw = 1;
    hwfb->show();
    hwfb->redraw();
    fb3->hide();

    fbs = new FrameBuffer(u0, v0, w, h);
    fbs->position(u0+fb->w+u0, v0+fb->h+v0);
    fbs->label("Shadow map");
    //fbs->show();
    fbs->redraw();
    fbs->hide();

    float hfov = 60.0f;
    ppc = new PPC(hfov, w, h);
    ppc3 = new PPC(hfov, w, h);
    ppc3->C = V3(-200.0f, 200.0f, 120.0f);
    light = new Light(hfov, w, h);
    light->C = V3(100.0f, 50.0f, -200.0f);

    shadingMode = 0;
    textureMode = 0;
    ambientFactor = 0.0f;
    specularExp = 0.0f;
    tmsN = 4;
    tms = new TM[tmsN];
    tms[0].SetTriangle(V3(-50.0f, -25.0f, -100.0f), V3(0.0f, 25.0f, -100.0f), V3(50.0f, -25.0f, -100.0f));
    //tms[0].LoadBin("geometry/teapot1k.bin");
    //tms[0].SetCenter(V3(0.0f, 0.0f, -200.0f));

    //tms[0].SetAsAACube(V3(0.0f, 0.0f, -200.0f), 50.0);

    //tms[0].LoadBin("geometry/teapot57k.bin");
    //tms[0].SetCenter(V3(0.0f, 0.0f, -200.0f));
    //tms[1].SetTriangle(V3(-200.0f, -70.f, 0.0f),  V3(200.0f, -70.f, 0.0f), V3(-200.0f, -70.f, -400.0f));
    //tms[2].SetTriangle(V3(200.0f, -70.f, -400.0f), V3(-200.0f, -70.f, -400.0f), V3(200.0f, -70.f, 0.0f));

    light->PositionAndOrient(light->C, tms[0].GetCenter(), V3(0.0f, 1.0f, 0.0f));
    ppc3->PositionAndOrient(ppc3->C, tms[0].GetCenter(), V3(0.0f, 1.0f, 0.0f));

    gui->uiw->position(u0, v0 + fb->h + v0);

    // load textures from image files
    textures = 0;
    texturesN = 0;

    needInitHW = 1;
}

void Scene::Render(PPC *rppc, FrameBuffer *rfb) {
    rfb->SetBGR(0xFFFFFFFF);
    rfb->SetZB(0.0f);
    for (int tmi = 0; tmi < tmsN; tmi++) {
        tms[tmi].RenderFill(rppc, rfb);
    }
    rfb->redraw();
    Fl::check();

}

void Scene::RenderSM2(PPC *rppc, FrameBuffer *rfb) {
    V3 matColor(1.0f, 1.0f, 1.0f);
    float ka = 0.03f;
    light->PositionAndOrient(light->C, tms[0].GetCenter(), V3(0.0f, 1.0f, 0.0f));

    rfb->SetBGR(0xFFFFFFFF);
    rfb->SetZB(0.0f);

    for (int tmi = 0; tmi < tmsN; tmi++) {
        tms[tmi].Light(matColor, ka, light->GetVD(), ambientFactor);
        tms[tmi].RenderFill(rppc, rfb);
    }
    rfb->redraw();
    Fl::check();

}


void Scene::RenderSM3(PPC *rppc, FrameBuffer *rfb) {
    V3 matColor(1.0f, 1.0f, 1.0f);
    float ka = 0.03f;
    rfb->SetBGR(0xFFFFFFFF);
    rfb->SetZB(0.00f);

    for (int tmi = 0; tmi < tmsN; tmi++) {
        tms[tmi].RenderFill(rppc, rfb, matColor, light->GetVD(), ka, ambientFactor, specularExp);
    }
    rfb->redraw();
    Fl::check();

}

void Scene::RenderShadow(PPC *rppc, FrameBuffer *rfb) {
    V3 matColor(1.0f, 1.0f, 1.0f);
    float ka = 0.03f;
    rfb->SetBGR(0xFF777700);
    rfb->SetZB(0.00f);

    for (int tmi = 0; tmi < tmsN; tmi++) {
        tms[tmi].RenderFillWithShadow(rppc, rfb, matColor, light->GetVD(), ka, ambientFactor, specularExp, light);
    }
    rfb->redraw();
    Fl::check();

}

void Scene::RenderTexture(PPC *rppc, FrameBuffer *rfb) {
    rfb->SetBGR(0xFFFFFFFF);
    rfb->SetZB(0.0f);
    for (int tmi = 0; tmi < tmsN; tmi++) {
        tms[tmi].RenderFillTexture(rppc, rfb, textureMode);
    }
    rfb->redraw();
    Fl::check();

}

void Scene::ReposLight() {
    light->PositionAndOrient(light->C, tms[0].GetCenter(), V3(0.0f, 1.0f, 0.0f));
}

void Scene::RenderLSM(FrameBuffer *rfb) {
    //light->PositionAndOrient(light->C, tms[0].GetCenter(), V3(0.0f, 1.0f, 0.0f));
    rfb->SetSM(0.0f);
    for (int tmi = 0; tmi < tmsN; tmi++) {
        tms[tmi].RenderShadowMap(light, rfb);
    }
}

void Scene::RenderEnvMap(PPC *rppc, FrameBuffer *rfb) {
    char* fname[6] = {"textures/uffizi2/UffiziRight.jpg", "textures/uffizi2/UffiziLeft.jpg", "textures/uffizi2/UffiziTop.jpg",
                      "textures/uffizi2/UffiziBottom.jpg", "textures/uffizi2/UffiziFront.jpg", "textures/uffizi2/UffiziBack.jpg"};
    CubeMap *cubemap = new CubeMap(fname);
    for (int v = 0; v <= 400; v++) {
        for (int u = 0; u <= 600; u++) {
            V3 intersect = rppc->GetFBIntersection(u, v);
            rfb->Set(u, v, cubemap->GetColor(intersect));
        }
    }
    V3 matColor(1.0f, 1.0f, 1.0f);
    float ka = 0.03f;
    rfb->SetZB(0.0f);
    for (int tmi = 0; tmi < tmsN; tmi++) {
        tms[tmi].RenderFill(rppc, rfb, matColor, light->GetVD(), ka, ambientFactor, specularExp, cubemap);
    }
    rfb->redraw();
    Fl::check();
}

void Scene::Render() {
    if (shadingMode == 0) {
        Render(ppc, fb);
        Render(ppc3, fb3);
    } else if (shadingMode == 1) {
        RenderSM2(ppc, fb) ;
        RenderSM2(ppc3, fb3) ;
    } else if (shadingMode == 2) {
        RenderSM3(ppc, fb) ;
        RenderSM3(ppc3, fb3) ;
    } else if (shadingMode == 3) {
        RenderShadow(ppc, fb);
        RenderShadow(ppc3, fb3);
        fbs->ViewShadowMap(fb->sm);
        fbs->redraw();
    } else if (shadingMode == 4) {
        RenderTexture(ppc, fb);
        //RenderTexture(ppc3, fb3);
        return;
    } else if (shadingMode == 5) {
        RenderEnvMap(ppc, fb);
        return;
    }
    fb3->Render3DSegment(ppc3, ppc->C, ppc->C + ppc->GetVD()*100.0f,
                         V3(1.0f, 0.0f, 0.0f), V3(0.0f, 0.0f, 0.0f));
    fb3->Render3DPoint(ppc3, ppc->C, V3(1.0f, 0.0f, 0.0f), 7.0f);
    if (shadingMode != 0) {
        fb3->Render3DSegment(ppc3, light->C, light->C + light->GetVD() * 100.0f, V3(1.0f, 1.0f, 0.0f),
                             V3(1.0f, 1.0f, 0.0f));
        fb3->Render3DPoint(ppc3, light->C, V3(1.0f, 1.0f, 0.0f), 7.0f);
    }
    fb3->redraw();
}

void Scene::DBG() {

    {
        shadingMode = 4;
        textureMode = 0;

        float sl2 = 50.0f / 2.0f;
        V3 v1 = V3(-sl2, +sl2, +sl2);
        V3 v2 = V3(-sl2, -sl2, +sl2);
        V3 v3 = V3(+sl2, -sl2, +sl2);
        V3 v4 = V3(+sl2, +sl2, +sl2);
        V3 v5 = V3(-sl2, +sl2, -sl2);
        V3 v6 = V3(-sl2, -sl2, -sl2);
        V3 v7 = V3(+sl2, -sl2, -sl2);
        V3 v8 = V3(+sl2, +sl2, -sl2);
        FrameBuffer *stonetext = new FrameBuffer(100, 100, 200, 200);
        stonetext->SetTextureImage("textures/stone.jpg");
        /*
        FrameBuffer *woodtext = new FrameBuffer(100, 100, 200, 200);
        woodtext->SetTextureImage("textures/wood.png");
        FrameBuffer *metaltext = new FrameBuffer(100, 100, 200, 200);
        metaltext->SetTextureImage("textures/metal.jpg");
        FrameBuffer *anotherwoodtext = new FrameBuffer(100, 100, 200, 200);
        anotherwoodtext->SetTextureImage("textures/woodfloor.jpg");
         */

        tms[0].SetQuad(v1, v2, v3, v4);
        tms[0].Translate(V3(0.0f, 0.0f, -200.0f));
        tms[1].SetQuad(v5, v1, v4, v8);
        tms[1].Translate(V3(0.0f, 0.0f, -200.0f));
        tms[2].SetQuad(v5, v1, v2, v6);
        tms[2].Translate(V3(0.0f, 0.0f, -200.0f));
        tms[3].SetQuad(v2, v8, v7, v3);
        tms[3].Translate(V3(0.0f, 0.0f, -200.0f));

        tms[0].texture = stonetext;
        tms[1].texture = stonetext;
        tms[2].texture = stonetext;
        tms[3].texture = stonetext;
        Render();
        return;
    }

    /*
    {
        hwfb->hide();
        fb3->show();
        FrameBuffer *texture = new FrameBuffer(100, 100, 1024, 1024);
        texture->SetChecker(0xFF000000, 0xFFDDDDDD, 2);
        ppc->PositionAndOrient(V3(0.0f, 0.0f, 0.0f), V3(0.0f, 0.0f, -100.0f), V3(0.0f, 1.0f, 0.0f));
        float rw = 200.0f;
        float rh = 200.0f;
        tms[0].SetTexturedRectangle(rw, rh);
        tms[0].Translate(V3(0.0f, 0.0f, -200.0f));
//		tms[0].Rotate(tms[0].GetCenter(), V3(0.0f, 0.0f, 1.0f), 5.0f);
        tms[0].texture = texture;
        //		Render();
        //		fb->SaveAsTiff("mydbg/bilinear.tif");
        //		return;

        for (int fi = 0; fi < 100000; fi++) {
            Render();
            Fl::check();
//			tms[0].Rotate(tms[0].GetCenter(), V3(0.0f, 1.0f, 0.0f), .1f);
            tms[0].Translate(V3(0.0f, 0.0f, -.1f));
        }
        Render();
        return;
    }
    */

    /*
    {

        clock_t current_ticks, delta_ticks;
        clock_t fps = 0;

        int fN = 200;
        for (int fi = 0; fi < fN; fi++) {
            current_ticks = clock();

            Render();
            hwfb->redraw();
            Fl::check();
            if (fi > 50) {
                ppc->LoadFile("Cam.txt", fi+50);
            } else {
                ppc->C = ppc->C + V3(0.0f, 2.0f, 0.0f);
                ppc->PositionAndOrient(ppc->C, tms[0].GetCenter(), V3(0.0f, 1.0f, 0.0f));
            }

            delta_ticks = clock() - current_ticks; //the time, in ms, that took to render the scene
            if (delta_ticks > 0) {
                fps = CLOCKS_PER_SEC / delta_ticks;
            }
            char buffer[126];
            sprintf(buffer,"first person HW %d fps", fps);
            hwfb->label(buffer);
        }

        return;
    }
     */

    /*
    {
        shadingMode = 4;
        float sl2 = 25.0f;
        V3 v0 = V3(-sl2, +sl2, +sl2);
        V3 v1 = V3(-sl2, -sl2, +sl2);
        V3 v2 = V3(+sl2, -sl2, +sl2);
        V3 v3 = V3(+sl2, +sl2, +sl2);
        V3 v4 = V3(-sl2, +sl2, -sl2);
        V3 v5 = V3(-sl2, -sl2, -sl2);
        V3 v6 = V3(+sl2, -sl2, -sl2);
        V3 v7 = V3(+sl2, +sl2, -sl2);
        FrameBuffer *texture = new FrameBuffer(100, 100, 2000, 2000);
        //texture->SetChecker(0xFF000000, 0xFFDDDDDD, 16);
        texture->SetTextureImage("textures/uffizi2/UffiziFront.jpg");
        //FrameBuffer *texture = new FrameBuffer(0, 0, 6000, 4000);
        //texture->SetTextureImage("textures/sky.jpg");
        //FrameBuffer *texture2 = new FrameBuffer(100, 100, 2000, 2000);
        ppc->PositionAndOrient(V3(0.0f, 0.0f, 0.0f), V3(0.0f, 0.0f, -100.0f), V3(0.0f, 1.0f, 0.0f));
        //tms[0].SetTexturedRectangle(v0, v1, v2, v3);
        tms[0].Translate(V3(0.0f, 0.0f, -200.0f));
        tms[0].texture = texture;
        /*
        tms[1].SetTexturedRectangle(v2, v3, v4, v5);
        tms[1].Translate(V3(0.0f, 0.0f, -200.0f));
        tms[1].texture = texture;
        tms[2].SetTexturedRectangle(v4, v5, v6, v7);
        tms[2].Translate(V3(0.0f, 0.0f, -200.0f));
        tms[2].texture = texture;
         */
    /*

    fb3->hide();
    for (int fi = 0; fi < 450; fi++) {
        Render();
        Fl::check();
        tms[0].Rotate(tms[0].GetCenter(), V3(0.0f, 1.0f, 0.0f), .1f);
    }
    Render();
    return;
}
     */


    /*
    {
        TM tm;
        tm.SetAsCopy(&(tms[0]));
        tms[0].SetUnshared(&tm);
        for (int fi = 0; fi < 1000; fi++) {
            Render();
            Fl::check();
            tms[0].Explode(0.1f);
        }
        return;
    }
     */

    /*
    {
        Render();
        float vlength = 10.0f;
        tms[0].VisualizeVertexNormals(ppc, fb, vlength);
        tms[0].VisualizeVertexNormals(ppc3, fb3, vlength);
        return;

    }
     */
    /*
    {
        V3 matColor(1.0f, 0.5f, 1.0f);
        float ka = 0.03f;
        V3 lv = ppc->GetVD();
        V3 center = tms[0].GetCenter();
        for (int fi = 0; fi < 360; fi++) {
            tms[0].Light(matColor, ka, lv);
            Render();
            fb3->Render3DSegment(ppc, center - lv *50.0f, center, V3(1.0f, 1.0f, 0.0f),
                                 V3(1.0f, 1.0f, 0.0f));
            fb3->Render3DPoint(ppc, center - lv *50.0f, V3(1.0f, 1.0f,0.0f),7.0f);
            Fl::check();
            lv = lv.RotateThisVector(V3(1.0f, 0.0f, 0.0f), 1.0f);
        }
        return;
    }
     */

    {

        V3 P0(-5.0f, 0.0f, -10.0f);
        V3 P1(+100.0f, 0.0f, -200.0f);
        V3 c0(1.0f, 0.0f, 0.0f);
        V3 c1(0.0f, 0.0f, 0.0f);
        ppc->PositionAndOrient(V3(0.0f, 0.0f, 0.0f), V3(0.0f, 0.0f, -10.0f), V3(0.0f, 1.0f, 0.0f));
        fb->SetBGR(0xFFFFFFFF);
        fb->Render3DSegment(ppc, P0, P1, c0, c1);
        fb->redraw();
        ppc3->PositionAndOrient(V3(0.0f, 500.0f, 100.0f), V3(0.0f, 0.0f, 0.0f), V3(0.0f, 1.0f, 0.0f));
        fb3->SetBGR(0xFFFFFFFF);
        fb3->Render3DSegment(ppc3, P0, P1, c0, c1);
        int stepsN = 4;
        for (int si = 0; si <= stepsN; si++) {
            V3 currp = P0 + (P1 - P0) * (float) si / (float)stepsN;
            V3 currc = c0 + (c1 - c0) * (float) si / (float)stepsN;
            fb->Render3DPoint(ppc, currp, currc, 9.0f);
            fb3->Render3DPoint(ppc3, currp, currc, 9.0f);
        }
        V3 P0p, P1p;
        ppc->Project(P0, P0p);
        ppc->Project(P1, P1p);
        float w0 = 1.0f / P0p[2];
        float w1 = 1.0f / P1p[2];
        for (int si = 0; si <= stepsN; si++) {
            float frac = (float)si / (float)stepsN;
            V3 currp = P0p + (P1p - P0p) * frac;
            float currw = w0 + (w1 - w0)*frac;
            fb->DrawDisk(currp, 5.0f, 0xFF00FF00);
            V3 ucurrp;
            ppc->Unproject(currp, ucurrp);
            fb3->Render3DPoint(ppc3, ucurrp, V3(0.0f, 1.0f, 0.0f), 5.0f);
            currp[2] = 1.0f / currw;
            ppc->Unproject(currp, ucurrp);
            fb3->Render3DPoint(ppc3, ucurrp, V3(0.0f, 0.0f, 1.0f), 5.0f);
        }
        fb->redraw();
        fb3->redraw();
        return;
    }

}

void Scene::Right() {
        ppc->TranslateLR(1.0f);
        Render();
}

void Scene::Left() {
        ppc->TranslateLR(-1.0f);
        Render();
}

void Scene::Up() {
        ppc->TranslateUD(1.0f);
        Render();
}

void Scene::Down() {
        ppc->TranslateUD(-1.0f);
        Render();
}

void Scene::Front() {
        ppc->TranslateFB(1.0f);
        Render();
}

void Scene::Back() {
        ppc->TranslateFB(-1.0f);
        Render();
}

void Scene::RotateX() {
    for (int i = 0; i < 3; i++) {
        ppc->Rotate(V3(0.0f, 0.0f, 1.0f), 0.5f);
        Render();
    }
}

void Scene::RotateXn() {
    for (int i = 0; i < 3; i++) {
        ppc->Rotate(V3(0.0f, 0.0f, 1.0f), -0.5f);
        Render();
    }
}

void Scene::Tilt() {
    for (int i = 0; i < 3; i++) {
        ppc->Tilt(0.5f);
        Render();
    }
}

void Scene::TiltN() {
    for (int i = 0; i < 3; i++) {
        ppc->Tilt(-0.5f);
        Render();
    }
}

void Scene::Pan() {
    for (int i = 0; i < 3; i++) {
        ppc->Pan(-0.5f);
        Render();
    }
}

void Scene::PanN() {
    for (int i = 0; i < 3; i++) {
        ppc->Pan(0.5f);
        Render();
    }
}

void Scene::ZoomIn() {
    for (int i = 0; i < 3; i++) {
        ppc->Zoom(1.1f);
        Render();
    }
}

void Scene::ZoomOut() {
    for (int i = 0; i < 3; i++) {
        ppc->Zoom(0.9f);
        Render();
    }
}

void Scene::LightR() {
        light->TranslateLR(1.0f);
        light->Pan(0.2f);
        ReposLight();
        RenderLSM(fb);
        RenderLSM(fb3);
        Render();
}

void Scene::LightL() {
        light->TranslateLR(-1.0f);
        light->Pan(-0.2f);
        ReposLight();
        RenderLSM(fb);
        RenderLSM(fb3);
        Render();
}

void Scene::LightU() {
        light->TranslateUD(1.0f);
        ReposLight();
        RenderLSM(fb);
        RenderLSM(fb3);
        Render();
}

void Scene::LightD() {
        light->TranslateUD(-1.0f);
        ReposLight();
        RenderLSM(fb);
        RenderLSM(fb3);
        Render();
}

void Scene::SM1() {
    shadingMode = 0;
    tms[0].LoadBin("geometry/teapot1k.bin");
    tms[0].SetCenter(V3(0.0f, 0.0f, -200.0f));
    Render();
}

void Scene::SM2() {
    shadingMode = 1;
    tms[0].LoadBin("geometry/teapot1k.bin");
    tms[0].SetCenter(V3(0.0f, 0.0f, -200.0f));
    Render();
}

void Scene::SM3() {
    shadingMode = 2;
    tms[0].LoadBin("geometry/teapot1k.bin");
    tms[0].SetCenter(V3(0.0f, 0.0f, -200.0f));
    Render();
}

void Scene::Shadow() {
    shadingMode = 3;
    RenderLSM(fb);
    RenderLSM(fb3);
    Render();
}

void Scene::EnvMap() {
    shadingMode = 5;
    fb3->hide();
    fbs->hide();
    Render();
}

void Scene::AmbientU() {
    if (shadingMode != 0) {
        if (ambientFactor < 0.98f) {
            ambientFactor += 0.03f;
        }
        Render();
    }
}

void Scene::AmbientD() {
    if (shadingMode != 0) {
        if (ambientFactor > 0.0f) {
            ambientFactor -= 0.03f;
        } else {
            ambientFactor = 0.0f;
        }
        Render();
    }
}

void Scene::SpecularU() {
    cout << specularExp << endl;
    if (shadingMode == 2) {
       if (specularExp < 0.98f)  {
           specularExp += 0.02f;
       }
       Render();
    }
}

void Scene::SpecularD() {
    cout << specularExp << endl;
    if (shadingMode == 2) {
        if (specularExp > 0.0f) {
            specularExp -= 0.02f;
        } else {
            specularExp = 0.0f;
        }
        Render();
    }
}

void Scene::RotateMesh() {
    tms[0].Rotate(V3(0.0f, 0.0f, 0.0f), V3(0.0f, 1.0f, 0.0f), 0.05f);
    RenderLSM(fb);
    RenderLSM(fb3);
    Render();
}

void Scene::Tile() {
    textureMode = 0;
    Render();
}

void Scene::Mirror() {
    textureMode = 1;
    Render();
}

void Scene::RenderHW() {

    glEnable(GL_DEPTH_TEST);
    glEnable(GL_TEXTURE_2D);
    glClearColor(hwClearColor[0], hwClearColor[1], hwClearColor[2], 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    float nearz = 0.1f;
    float farz = 1000.0f;
    ppc->SetIntrinsicsHW(nearz, farz);
    ppc->SetExtrinsicsHW();

    for (int tmi = 0; tmi < tmsN; tmi++) {
        if (tmi == 1) {
            HWTexture();
            tms[tmi].RenderHWTexture();
        } else {
            //glDisable(GL_TEXTURE_2D);
            tms[tmi].RenderHW();
        }
    }

}

void Scene::HWTexture() {
    unsigned int texture;
    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture);
// set the texture wrapping/filtering options (on the currently bound texture object)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_GENERATE_MIPMAP, GL_TRUE);
// load and generate the texture
    int width, height, nrChannels;
    unsigned char *data = stbi_load("textures/woodfloor.jpg", &width, &height, &nrChannels, 0);
    if (data)
    {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
        glGenerateMipmap(GL_TEXTURE_2D);
    }
    else
    {
        std::cout << "Failed to load texture" << std::endl;
    }
    stbi_image_free(data);
    //glClientActiveTexture(texture);
    glBindTexture(GL_TEXTURE_2D, texture);
}
