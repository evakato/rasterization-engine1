// generated by Fast Light User Interface Designer (fluid) version 1.0304

#include "gui.h"
#include <iostream>

void GUI::cb_DBG_i(Fl_Button*, void*) {
    DBG_cb();
}
void GUI::cb_DBG(Fl_Button* o, void* v) {
    ((GUI*)(o->parent()->user_data()))->cb_DBG_i(o,v);
}

void GUI::cb_SM1_i(Fl_Return_Button*, void*) {
    SM1_cb();
}
void GUI::cb_SM1(Fl_Return_Button* o, void* v) {
    ((GUI*)(o->parent()->user_data()))->cb_SM1_i(o,v);
}

void GUI::cb_SM2_i(Fl_Return_Button*, void*) {
    SM2_cb();
}
void GUI::cb_SM2(Fl_Return_Button* o, void* v) {
    ((GUI*)(o->parent()->user_data()))->cb_SM2_i(o,v);
}

void GUI::cb_SM3_i(Fl_Return_Button*, void*) {
    SM3_cb();
}
void GUI::cb_SM3(Fl_Return_Button* o, void* v) {
    ((GUI*)(o->parent()->user_data()))->cb_SM3_i(o,v);
}

void GUI::cb_AmbientU_i(Fl_Return_Button*, void*) {
    AmbientU_cb();
}
void GUI::cb_AmbientU(Fl_Return_Button* o, void* v) {
    ((GUI*)(o->parent()->user_data()))->cb_AmbientU_i(o,v);
}
void GUI::cb_AmbientD_i(Fl_Return_Button*, void*) {
    AmbientD_cb();
}
void GUI::cb_AmbientD(Fl_Return_Button* o, void* v) {
    ((GUI*)(o->parent()->user_data()))->cb_AmbientD_i(o,v);
}

void GUI::cb_SpecularU_i(Fl_Return_Button*, void*) {
    SpecularU_cb();
}
void GUI::cb_SpecularU(Fl_Return_Button* o, void* v) {
    ((GUI*)(o->parent()->user_data()))->cb_SpecularU_i(o,v);
}
void GUI::cb_SpecularD_i(Fl_Return_Button*, void*) {
    SpecularD_cb();
}
void GUI::cb_SpecularD(Fl_Return_Button* o, void* v) {
    ((GUI*)(o->parent()->user_data()))->cb_SpecularD_i(o,v);
}

void GUI::cb_Shadow_i(Fl_Return_Button*, void*) {
    Shadow_cb();
}
void GUI::cb_Shadow(Fl_Return_Button* o, void* v) {
    ((GUI*)(o->parent()->user_data()))->cb_Shadow_i(o,v);
}

void GUI::cb_EnvMap_i(Fl_Return_Button*, void*) {
    EnvMap_cb();
}
void GUI::cb_EnvMap(Fl_Return_Button* o, void* v) {
    ((GUI*)(o->parent()->user_data()))->cb_EnvMap_i(o,v);
}
#include "scene.h"

GUI::GUI() {
    { uiw = new Fl_Double_Window(400, 400, "GUI");

        uiw->user_data((void*)(this));

        { Fl_Button* o = new Fl_Button(15, 15, 95, 40, "DBG");
            o->selection_color(FL_DARK_RED);
            o->callback((Fl_Callback*)cb_DBG);
        } // Fl_Button* o
        { Fl_Button* o = new Fl_Button(30, 80, 50, 50, "SM1");
            o->callback((Fl_Callback*)cb_SM1);
        }
        { Fl_Button* o = new Fl_Button(80, 80, 50, 50, "SM2");
            o->callback((Fl_Callback*)cb_SM2);
        }
        { Fl_Button* o = new Fl_Button(130, 80, 50, 50, "SM3");
            o->callback((Fl_Callback*)cb_SM3);
        }
        { Fl_Button* o = new Fl_Button(110, 140, 80, 50, "Ambient +");
            o->callback((Fl_Callback*)cb_AmbientU);
        }
        { Fl_Button* o = new Fl_Button(30, 140, 80, 50, "Ambient -");
            o->callback((Fl_Callback*)cb_AmbientD);
        }
        { Fl_Button* o = new Fl_Button(110, 200, 80, 50, "Specular +");
            o->callback((Fl_Callback*)cb_SpecularU);
        }
        { Fl_Button* o = new Fl_Button(30, 200, 80, 50, "Specular -");
            o->callback((Fl_Callback*)cb_SpecularD);
        }
        { Fl_Button* o = new Fl_Button(30, 260, 80, 50, "Shadow");
            o->callback((Fl_Callback*)cb_Shadow);
        }
        { Fl_Button* o = new Fl_Button(110, 260, 80, 50, "Env Map");
            o->callback((Fl_Callback*)cb_EnvMap);
        }
        uiw->end();
    } // Fl_Double_Window* uiw
}

int main(int argc, char **argv) {
    scene = new Scene;
    return Fl::run();
}

void GUI::show() {
    uiw->show();
}

void GUI::DBG_cb() {
    scene->DBG();
}

void GUI::SM1_cb() {
    scene->SM1();
}

void GUI::SM2_cb() {
    scene->SM2();
}

void GUI::SM3_cb() {
    scene->SM3();
}

void GUI::AmbientU_cb() {
    scene->AmbientU();
}

void GUI::AmbientD_cb() {
    scene->AmbientD();
}

void GUI::SpecularU_cb() {
    scene->SpecularU();
}

void GUI::SpecularD_cb() {
    scene->SpecularD();
}

void GUI::Shadow_cb() {
    scene->Shadow();
}

void GUI::EnvMap_cb() {
    scene->EnvMap();
}