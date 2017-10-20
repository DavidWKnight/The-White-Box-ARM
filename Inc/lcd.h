/*
 * lcd.h
 *
 *  Created on: Oct 15, 2017
 *      Author: David Knight
 */

#ifndef LCD_H_
#define LCD_H_

#include "stm32l4xx.h"
#include "stm32l4xx_ll_gpio.h"
//#include "peripherals.h"

#define LCD_line_count 4
#define LCD_line_length 20

#define LCD_RS_pin LL_GPIO_PIN_1
#define LCD_RS_port GPIOB
#define LCD_RW_pin LL_GPIO_PIN_2
#define LCD_RW_port GPIOB
#define LCD_E_pin LL_GPIO_PIN_0
#define LCD_E_port GPIOH
#define LCD_data_pins (LL_GPIO_PIN_8 | LL_GPIO_PIN_9 | LL_GPIO_PIN_10 | LL_GPIO_PIN_11 | LL_GPIO_PIN_12 | LL_GPIO_PIN_13 | LL_GPIO_PIN_14 | LL_GPIO_PIN_15)
#define LCD_data_port GPIOC

void init_LCD();
void LCD_write_data(int);
void LCD_write_cmd(int);
void LCD_cursor_pos(int, int);
void LCD_write_integer(int, int, int,unsigned int);

#endif /* LCD_H_ */
