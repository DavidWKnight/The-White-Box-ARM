/*
 * fmath.c
 *
 *  Created on: Oct 25, 2017
 *      Author: David Knight
 */
#include <fmath.h>


/*
 * Calculate cos(x) using floating point numbers
 *
 */
float fcos(float x){
	if (x < 0){
		x *= -1;
	}
	x -= ((int)(x*inv_2PI))*_2PI;
	if(x < PI_2){
		return cos_32(x);
	}
	else if(x > 3*PI_4){
		return cos_32(x-_2PI);
	}
	return -cos_32(PI - x);
}

/*
 * Calculate cos(x) in the range -pi/2 < x < pi/2
 *
 */
static float cos_32(float x){
	return 1.0f + x*x*(0.0416667f*x*x - 0.5f);
}

/*
 * Calculate sin(x) using floating point numbers
 *
 */
float fsin(float x){
	if (x < 0){
		return -fsin(-x);
	}
	x -= ((int)(x*inv_2PI))*_2PI;
	if(x < PI_2){
		return sin_32(x);
	}
	else if(x > 3*PI_4){
		return sin_32(x - _2PI);
	}
	return sin_32(PI - x);
}

/*
 * Calculate sin(x) in the range -pi/2 < x < pi/2
 *
 */
static float sin_32(float x){
	return x*(0.9996949f + x*x*(0.0083333f*x*x - 0.1666667f));
}

float taylor_exp(float x){
    return 1 + x*(1.5f + .166667f*x);
}

float taylor_tanh(float x){
    return x*(1.0f + x*x*(0.1333333f*x*x - .3333333f));
}

float float_mod(float a, float b){
    return (a - b*(int)(a/b));
}
