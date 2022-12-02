#include "ppc.h"
#include "M33.h"
#include <math.h>
#include <FL/Fl.H>
#include <FL/Fl_Gl_Window.H>
#include <GL/glut.h>
#include <FL/glu.h>

using namespace std;

#include <iostream>
#include <fstream>

PPC::PPC(float hfov, int _w, int _h) : w(_w), h(_h) {

    C = V3(0.0f, 0.0f, 0.0f);
    a = V3(1.0f, 0.0f, 0.0f);
    b = V3(0.0f, -1.0f, 0.0f);
    float hfovd = hfov / 180.0f * 3.1415926f;
    c = V3(-(float)w / 2.0f, (float)h / 2.0f, -(float)w / (2.0f * tan(hfovd / 2.0f)));

}

V3 PPC::GetFBIntersection(int u, int v) {
    return a*(u+0.5f) + b*(v+0.5f) + c;
}


int PPC::Project(V3 P, V3 &pP) {

    M33 M;
    M.SetColumn(0, a);
    M.SetColumn(1, b);
    M.SetColumn(2, c);
    V3 q = M.Inverted()*(P - C);
    if (q[2] <= 0.0f)
        return 0;

    pP[0] = q[0] / q[2];
    pP[1] = q[1] / q[2];
    pP[2] = 1.0f / q[2];
    return 1;

}

V3 PPC::GetVD() {

    return (a^b).UnitVector();

}

void PPC::Rotate(V3 aDir, float theta) {

    a = a.RotateThisVector(aDir, theta);
    b = b.RotateThisVector(aDir, theta);
    c = c.RotateThisVector(aDir, theta);

}

float PPC::GetF() {

    return c*GetVD();

}

void PPC::PositionAndOrient(V3 Cn, V3 L, V3 upg) {

    V3 vdn = (L - Cn).UnitVector();
    V3 an = (vdn ^ upg).UnitVector();
    V3 bn = vdn ^ an;
    float f = GetF();
    V3 cn = vdn*f - an* (float)w / 2.0f - bn* (float)h / 2.0f;

    a = an;
    b = bn;
    c = cn;
    C = Cn;

}

void PPC::Pan(float theta) {
    a = a.RotateThisVector(b.UnitVector()*-1.0f, theta);
    b = b.RotateThisVector(b.UnitVector()*-1.0f, theta);
    c = c.RotateThisVector(b.UnitVector()*-1.0f, theta);
}

void PPC::Tilt(float theta) {
    a = a.RotateThisVector(a.UnitVector(), theta);
    b = b.RotateThisVector(a.UnitVector(), theta);
    c = c.RotateThisVector(a.UnitVector(), theta);
}

void PPC::Roll(float theta) {
    a = a.RotateThisVector(a.UnitVector()^b.UnitVector(), theta);
    b = b.RotateThisVector(a.UnitVector()^b.UnitVector(), theta);
    c = c.RotateThisVector(a.UnitVector()^b.UnitVector(), theta);
    //std::cout << C << std::endl;
}

void PPC::TranslateLR(float step) {
    C = C + a.UnitVector()*step;
}

void PPC::TranslateUD(float step) {
    C = C - b.UnitVector()*step;
}

void PPC::TranslateFB(float step) {
    C = C + (a^b).UnitVector()*step;
}

void PPC::Zoom(float zoom) {
    float ppu = (c*(-1))*a.UnitVector() / a.Length();
    float ppv = (c*(-1))*b.UnitVector() / b.Length();
    float f = GetF()*zoom;
    c = a*(-1)*ppu - b*ppv + GetVD()*f;
}

void PPC::Unproject(V3 pP, V3 &P) {

    P = C + (a*pP[0] + b*pP[1] + c) / pP[2];

}

void PPC::SetIntrinsicsHW(float nearz, float farz) {

    glViewport(0, 0, w, h);
    float scf = nearz / GetF();
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glFrustum(-(float)w / 2.0f*scf, (float)w / 2.0f*scf, -(float)h / 2.0f*scf, (float)h / 2.0f*scf,
              nearz, farz);

    glMatrixMode(GL_MODELVIEW);

}




void PPC::SetExtrinsicsHW() {

    glLoadIdentity();
    V3 L = C + GetVD()*100.0f;
    gluLookAt(C[0], C[1], C[2], L[0], L[1], L[2], -b[0], -b[1], -b[2]);

}

M33 PPC::GetMatrix() {

    M33 ret;
    ret.SetColumn(0, a);
    ret.SetColumn(1, b);
    ret.SetColumn(2, c);
    return ret;

}

void PPC::SaveFile(string filename) {
    ofstream MyFile(filename, std::ios_base::app);
    MyFile << a << "," << b << "," << c << "," << C << endl;
    MyFile.close();
}

// index refers to the line number of desired frame
// assumed that index is less than the number of lines in file
void PPC::LoadFile(string filename, int index) {
    string ppcVals;
    ifstream MyFile(filename);

    int count = 0;
    while (getline (MyFile, ppcVals)) {
        if (index == count) {
            std::string delimiter = ",";
            size_t pos = 0;
            std::string token;
            V3 ppcValsArr[3];
            int i = 0;
            while ((pos = ppcVals.find(delimiter)) != std::string::npos) {
                token = ppcVals.substr(0, pos);
                ppcValsArr[i] = StringToV3(token);
                ppcVals.erase(0, pos + delimiter.length());
                i++;
            }
            a = ppcValsArr[0];
            b = ppcValsArr[1];
            c = ppcValsArr[2];
            C = StringToV3(ppcVals);
            return;
        }
        count++;
    }
    MyFile.close();
}

V3 PPC::StringToV3(string line) {
    std::string delimiter = " ";
    size_t pos = 0;
    std::string token;
    V3 v0;
    int index = 0;
    while ((pos = line.find(delimiter)) != std::string::npos) {
        token = line.substr(0, pos);
        v0[index] = ::atof(token.c_str());
        line.erase(0, pos + delimiter.length());
        index++;
    }
    v0[index] = ::atof(line.c_str());
    return v0;
}
