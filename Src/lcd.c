/*
 * lcd.c
 *
 *  Created on: Oct 15, 2017
 *      Author: David Knight
 */

#include "lcd.h"

void init_LCD(){
	LL_GPIO_ResetOutputPin(LCD_RS_port, LCD_RS_pin);
	LL_GPIO_ResetOutputPin(LCD_RW_port, LCD_RW_pin);
	LL_GPIO_ResetOutputPin(LCD_E_port, LCD_E_pin);
	LL_mDelay(100);
	LCD_write_cmd(0x30);//wake up
	LL_mDelay(30);
	LCD_write_cmd(0x30);
	LL_mDelay(10);
	LCD_write_cmd(0x30);
	LL_mDelay(10);
	LCD_write_cmd(0x38);//8-bit/2-line
	LCD_write_cmd(0x10);//set cursor
	LCD_write_cmd(0x0C);//display on, cursor on
	LCD_write_cmd(0x06);//entry mode

	LCD_write_cmd(0x01);//clear display
	LCD_write_cmd(0x02);//return cursor to home

	return;
}

/*send data to LCD screen*/
void LCD_write_data(int buffer){
	uint32_t LED_values = LL_GPIO_IsOutputPinSet(LCD_data_port, LCD_data_pins);

	LL_GPIO_SetOutputPin(LCD_RS_port, LCD_RS_pin);
	LL_GPIO_ResetOutputPin(LCD_RW_port, LCD_RW_pin);
	LL_GPIO_ResetOutputPin(LCD_data_port, LCD_data_pins);
	LL_GPIO_SetOutputPin(LCD_data_port, buffer<<8);

	LL_GPIO_SetOutputPin(LCD_E_port, LCD_E_pin);
	LL_mDelay(1);
	LL_GPIO_ResetOutputPin(LCD_E_port, LCD_E_pin);

	LL_GPIO_ResetOutputPin(LCD_data_port, LCD_data_pins);
	LL_GPIO_SetOutputPin(LCD_data_port, LED_values);
	return;
}

/*send command to LCD screen*/
void LCD_write_cmd(int buffer){
	uint32_t LED_values = LL_GPIO_IsOutputPinSet(LCD_data_port, LCD_data_pins);

	LL_GPIO_ResetOutputPin(LCD_RS_port, LCD_RS_pin);
	LL_GPIO_ResetOutputPin(LCD_RW_port, LCD_RW_pin);
	LL_GPIO_ResetOutputPin(LCD_data_port, LCD_data_pins);
	LL_GPIO_SetOutputPin(LCD_data_port, buffer<<8);

	LL_GPIO_SetOutputPin(LCD_E_port, LCD_E_pin);
	if ((buffer & 0x80) > 0){
		LL_mDelay(1);
	}
	else{
	    LL_mDelay(2);
	}
	LL_GPIO_ResetOutputPin(LCD_E_port, LCD_E_pin);

	LL_GPIO_ResetOutputPin(LCD_data_port, LCD_data_pins);
	LL_GPIO_SetOutputPin(LCD_data_port, LED_values);
	return;
}

/*set cursor position for LCD, 1 indexed*/
void LCD_cursor_pos(int row, int column){
	char pos = 0x80;

	if (row == 4){
		pos += 0x54;
	}
	else if (row == 3){
		pos += 0x14;
	}
	else if (row == 2){
		pos += 0x40;
	}
	else if (row == 1){
	}
	else{
		//return exception or something?
	}
	pos += (column - 1);

	LCD_write_cmd(pos);//write DDRAM address
	return;
}

/*write the given number to the row and column given, only writes the number of digits given by length*/
void LCD_write_integer(int row, int column, int number,unsigned int length){
    const unsigned int powers_of_ten[5] = {10000, 1000, 100, 10, 1};
    static const unsigned int max_length = 5;
    unsigned int i = max_length - length;
    int num_temp = number;
    char temp = 0;

    LCD_cursor_pos(row, column);

	// Add a - for negative numbers
    if(num_temp < 0){ 
        LCD_write_data('-');
        i++;
        num_temp *= -1;
    }

	// Remove leading zeros
    for(; (num_temp < powers_of_ten[i]) && (i < (max_length - 1) ); i++){
        LCD_write_data(' ');
    }

    for(; i < (max_length - 1); i++){
        temp = num_temp / powers_of_ten[i];
        LCD_write_data(temp + 48);
        num_temp -= temp * powers_of_ten[i];
    }

    LCD_write_data(num_temp + 48);

    return;
}
