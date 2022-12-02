#pragma once

#include "framebuffer.h"
#include "ppc.h"

class CubeMap {
public:
    FrameBuffer *fbs[6];
    CubeMap(char* fname[6]);
    unsigned int GetColor(V3 d);
};