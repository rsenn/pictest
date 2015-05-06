/**
 * @file   adc.c
 * @author  Oleg Antonyan <oleg.b.antonyan@gmail.com>
 * @version 1.0
 *
 * @section LICENSE
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details at
 * http://www.gnu.org/copyleft/gpl.html
 *
 * @section DESCRIPTION
 *
 * ADC wrapper module
 */

#ifdef HI_TECH_C
#include <htc.h>
#else
#include <pic16f876a.h>
#endif

#include "adc.h"

void adc_start(void)
{
  /* Enable ADC, select RA0/AN0 channel, Fosc/32 clock */
    ADCON0bits.ADCS = 0b10;
  ADCON0bits.CHS = 0b000;
  ADCON1bits.PCFG = 0b0100;

  ADCON0bits.ADON = 1;
  ADCON0bits.GO_DONE = 1;
  PIE1bits.ADIE = 1;
}

uint8 adc_isr(void)
{
  if(PIR1bits.ADIF)
  {
    PIR1bits.ADIF = 0;
    if(ADRES < 45u)
    {  /* Threshold reached */
      return 1;
    }
    adc_start();
  }
  return 0;
}

void adc_disable(void)
{
  ADCON0bits.ADON = 0;
  PIE1bits.ADIE = 0;
}
