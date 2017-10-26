/*
 * effects.h
 *
 *  Created on: Oct 21, 2017
 *      Author: David Knight
 */

#ifndef EFFECTS_H_
#define EFFECTS_H_

#include <fmath.h>

/* Make sure everything uses floats, double precision is not efficient*/

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

#endif /* EFFECTS_H_ */
