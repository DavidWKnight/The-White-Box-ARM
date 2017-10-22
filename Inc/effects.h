/*
 * effects.h
 *
 *  Created on: Oct 21, 2017
 *      Author: David Knight
 */

#ifndef EFFECTS_H_
#define EFFECTS_H_

#include <math.h>

/* Make sure everything uses floats, double precision is not efficient*/

#define _2PI    6.28318530717958647693f
#define PI		3.14159265358979323846f
#define PI_2	1.57079632679489661923f
#define PI_3	1.04719755119659774615f
#define PI_4	0.78539816339744830962f
#define SAMPLES_PER_SECOND 48000
#define circ_buffer_size SAMPLES_PER_SECOND*1
#define max_sample_size 4095


int effects_init();
void delay_sample(short);
short delay(short, unsigned int, unsigned short);
short flange(short, char, char);
short tanh_OD(short, char, char);
//int vibrato(int, float, unsigned int);
//int chorus(int);
//int tremolo(int, float, float);
float taylor_cos(float x);
float taylor_sin(float x);
float taylor_exp(float x);
float taylor_tanh(float x);
float float_mod(float a, float b);

#endif /* EFFECTS_H_ */
