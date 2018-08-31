#include <math.h>
#include <stdio.h>
#include <stdlib.h>

static int steps = 100;
static int amplitude = 1024;

int
sine_out(int step) {
  double phi = (double)step * (M_PI * 2) / steps;

  double x = (sin(phi) + 1.0) * 0.5;

  x *= amplitude;

  return x;
}

int
main(int argc, char* argv[]) {

  int i;

  if(argc >= 2) {
    steps = atoi(argv[1]);

    if(argc >= 3) {
      amplitude = atoi(argv[2]);
    }
  }

  printf("const uint16_t\nsine_table[%d] = {\n  ", steps);

  for(i = 0; i < steps; i++) {
    int nl = ((i % 16) == 0);
    printf((i > 0 ? (nl ? ",\n  0x%03x" : ", 0x%03x") : "0x%03x"), sine_out(i));
  }
  printf("\n};\n");
  return 0;
}