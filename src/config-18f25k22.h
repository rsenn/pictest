#ifndef CONFIG_18F25K22_H
#define CONFIG_18F25K22_H 1

__CONFIG(1, FOSC_HSHP);
__CONFIG(2, BOREN_ON & PWRTEN_ON & WDTEN_OFF);
__CONFIG(3, CCP2MX_PORTC1);
__CONFIG(4, LVP_OFF);
__CONFIG(5, CPD_OFF);

#endif // defined CONFIG_18F25K22_H

