/*
 * effects.c
 *
 *  Created on: Oct 21, 2017
 *      Author: David Knight
 */

#include "effects.h"

static short circ_buffer_sig[circ_buffer_size];
static unsigned int buffer_sig_it = circ_buffer_size - 1;

int effects_init(){
    unsigned int i;
    for(i = 0; i < circ_buffer_size; i++){
        circ_buffer_sig[i] = 0;
    }
    return 0;
}

void delay_sample(short sample){
    if(buffer_sig_it == 0){
        buffer_sig_it = circ_buffer_size - 1;
    }
    else{
        buffer_sig_it--;
    }
    circ_buffer_sig[buffer_sig_it] = sample;
}

short delay(short sample, unsigned int frames, unsigned short repeats){
    unsigned int delay_ref = buffer_sig_it;
    for(; repeats; repeats--){
        delay_ref += frames;
        if(delay_ref >= circ_buffer_size){
            delay_ref -= circ_buffer_size;
        }
        sample += circ_buffer_sig[delay_ref];
        sample /= 2;
    }
    return sample;
}

/*
 *
 * speed -> frequency of flange effect, 1 = .1hz, 10 = 1hz, 100 = 10hz
 * depth -> How many samples to go back for time_delay
 */

short flange(short sample, char speed, char depth){
    static int index = 0;
    static char index_add = 0;
    unsigned int time_delay = 0;
    float speed_float = ((float)speed)/10.0f;

    time_delay = depth*(1.0f-taylor_cos(2.0f*PI*speed_float*index/((float)SAMPLES_PER_SECOND)));

    if(index > SAMPLES_PER_SECOND/speed){
        index_add = -1;
    }
    else{
        index_add = 1;
    }

    index += index_add;
    return delay(sample, time_delay, 1);

}

short tanh_OD(short sample, char gain, char mix){
    float sample_temp = ((float)sample)/((float)max_sample_size);
    float gain_float = ((float)gain)/100.0f;
    float mix_float = ((float)mix)/100.0f;

    // need to approximate tanh with chebyshev, math.tanh uses casts to doubles
    sample_temp = (1.0f-mix_float)*taylor_tanh(sample_temp*gain_float);
    
    sample_temp += sample_temp*(mix_float);
    sample_temp *= ((float)max_sample_size)*.05f;
    
    return (short)(sample_temp);
}

//int vibrato(int sample, float speed, unsigned int depth){
//    static unsigned long index = 0;
//    unsigned long time_delay = 0;
//    time_delay += (depth/2)*(1 - cos(2*__PI__*speed*( (float)index/SAMPLES_PER_SECOND) ) );
//    static long index_add = 1;
//    if(index > ((float)SAMPLES_PER_SECOND/2/speed)){
//        index_add = -1;
//    }
//    else if (index == 0){
//        index_add = 1;
//    }
//    index += index_add;
//    return delay(0, time_delay, 1);
//}
//
//int chorus(int sample){
//    unsigned long time_delay = (rand() % (SAMPLES_PER_SECOND/720)) + (SAMPLES_PER_SECOND/100);
//    float amp = chorus_amp_range[rand() % 10];
//    return delay(sample, time_delay, 2);
//}
//
//int tremolo(int sample, float speed, float depth){
//    static unsigned long index = 0;
//    depth /= 200;
//    float temp = (depth)*(1-depth - depth*cos(2*__PI__*speed*( (float)index/SAMPLES_PER_SECOND) ) );
//
//    static long index_add = 1;
//    if(index > ((float)SAMPLES_PER_SECOND/2/speed)){
//        index_add = -1;
//    }
//    else if (index == 0){
//        index_add = 1;
//    }
//    index += index_add;
//    float sample_out = sample;
//    return (int)(sample_out*temp);
//}

float taylor_cos(float x){
    //// Range Reduction
    //if(x < 0){
    //    x = -x;
    //}
    //x = float_mod(x, _2PI);
    //if(x > PI){
    //    x -= _2PI;
    //}

    return 1.0f + x*x*(0.0416667f*x*x - 0.5f);
}

float taylor_sin(float x){
    //// Range Reduction
    //if(x < 0){
    //    return -taylor_sin(-x);
    //}
    //x = float_mod(x, _2PI) - PI;
    //if(x > PI){
    //    x -= _2PI;
    //}

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
