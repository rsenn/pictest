#include <htc.h>

__CONFIG(1, USBPLL& CPUDIV2& PLLDIV3& HSPLL);
__CONFIG(2, WDTDIS);
__CONFIG(4, LVPEN);

void
Delay(void) {
  int i;
  int j;

  for(i = 0; i < 250; i++)
    for(j = 0; j < 255; j++)
      ;
}

void
main(void) {
  while(1) {
    PORTE = 0x00;
    TRISE = 0x00;

    while(1) {
      PORTE = 0x00;
      Delay();
      PORTE = 0xFF;
      Delay();
    }
  }
}
