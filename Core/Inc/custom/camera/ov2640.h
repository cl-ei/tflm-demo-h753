#ifndef OV2640_H
#define OV2640_H

#include <custom/camera/camera.h>
#include "main.h"


int ov2640_init(framesize_t framesize);

// copy from fanke
void OV2640_Config(const uint8_t (*ConfigData)[2]);
int8_t OV2640_Set_Framesize(uint16_t width,uint16_t height);
#endif
