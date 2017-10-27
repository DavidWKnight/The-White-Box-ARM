/*
 * fmath.h
 *
 *  Created on: Oct 25, 2017
 *      Author: David Knight
 */


#ifndef FMATH_H
#define FMATH_H

#define _2PI    6.28318530717958647693f
#define PI		3.14159265358979323846f
#define PI_2	1.57079632679489661923f
#define PI_3	1.04719755119659774615f
#define PI_4	0.78539816339744830962f
#define inv_2PI 0.15915494309189533577f

float fcos(float x);
float fsin(float x);
float taylor_exp(float x);
float taylor_tanh(float x);
float float_mod(float a, float b);

#endif //FMATH_H