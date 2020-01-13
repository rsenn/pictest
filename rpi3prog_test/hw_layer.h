// Clock Configuration

#include <pic.h>
#include <stdint.h>

// Pin Configuration

#define ICSP_DAT RA2
#define ICSP_DAT_TRIS TRISA2
#define ICSP_DAT_WPUA WPUA2

#define ICSP_CLK RA3
#define ICSP_CLK_TRIS TRISA3

#define ICSP_MCLR RA4
#define ICSP_MCLR_TRIS TRISA4

// Pin status macros

#define icsp_clk_high() (ICSP_CLK = 1)
#define icsp_clk_low() (ICSP_CLK = 0)

#define icsp_dat_high() (ICSP_DAT = 1)
#define icsp_dat_low() (ICSP_DAT = 0)

#define icsp_mclr_high() (ICSP_MCLR = 1)
#define icsp_mclr_low() (ICSP_MCLR = 0)

#define icsp_dat_as_input() (ICSP_DAT_TRIS = 1)
#define icsp_dat_as_output() (ICSP_DAT_TRIS = 0)

#define icsp_clk_as_output() (ICSP_CLK_TRIS = 0)
#define icsp_mclr_as_output() (ICSP_MCLR_TRIS = 0)

#define icsp_dat_pullup_on() (ICSP_DAT_WPUA = 1)
#define icsp_dat_pullup_off() (ICSP_DAT_WPUA = 0)

#define icsp_dat_is_high() (ICSP_DAT == 1)

// Time constants

#define T_ENTH 1

// Clock 1uS high, 1uS low
#define T_CKH 1
#define T_CKL 1

// After every write wait 2uS
#define T_DLY 2

// Bus I/O functions

void icsp_bus_init();
void icsp_bus_end();

// Writes bus with data of length (writes LSB-first)
void icsp_write(unsigned long long data, uint8_t len);

// Read 14 bit and returns as uint16_t (returns MSB-first)
uint16_t icsp_read();