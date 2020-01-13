
#include "hw_layer.h"

#include <pic.h>
#include <stdint.h>

void
icsp_bus_init() {
  icsp_dat_as_output();
  icsp_clk_as_output();
  icsp_mclr_as_output();

  icsp_dat_low();
  icsp_clk_low();

  icsp_mclr_low();

  _delay_ms(T_ENTH);
}

void
icsp_bus_end() {
  icsp_mclr_high();
}

void
icsp_write(unsigned long long data, uint8_t len) {
  icsp_dat_as_output();

  uint8_t iterations = 1;
  iterations <<= (len - 1);

  uint8_t i;

  for(i = 0x01; i <= iterations; i <<= 1) {
    if(data & i) {
      icsp_clk_high();
      icsp_dat_high();
    } else {
      icsp_clk_high();
      icsp_dat_low();
    }

    _delay_us(T_CKH);

    icsp_clk_low();

    _delay_us(T_CKL);
  }

  icsp_dat_low();

  _delay_us(T_DLY);
}

uint16_t
icsp_read() {
  uint16_t data = 0;

  icsp_dat_as_input();
  icsp_dat_pullup_on();

  int i;
  for(i = 0; i < 16; ++i) {
    icsp_clk_high();

    _delay_us(T_CKH);

    icsp_clk_low();

    if(i >= 1 && i <= 14) {
      if(icsp_dat_is_high()) {
        data |= (1 << (i - 1));
      }
    }

    _delay_us(T_CKL);
  }

  icsp_dat_pullup_off();
  icsp_dat_as_output();

  _delay_us(T_DLY);

  return data;
}
