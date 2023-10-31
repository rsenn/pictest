#include <libgen.h>
#include <math.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

float gamma_corr = 1.0f;

typedef void(convert_fn_t)(float, float, float, uint8_t*, uint8_t);

void hsi2rgb(float H, float S, float I, uint8_t* rgb, uint8_t range);
void hsv2rgb(float h, float s, float v, uint8_t* rgb, uint8_t range);
void hsv2rgb_rainbow(float h, float s, float v, uint8_t* rgb, uint8_t range);

convert_fn_t* const convert_functions[] = {
    &hsi2rgb,
    &hsv2rgb,
    &hsv2rgb_rainbow,
};
//
// in the calling function. After calling hsi2rgb
// the vector rgb will contain red, green, and blue
// calculated values.

#define DEG_TO_RAD(X) (M_PI * (X) / 180)

void
hsi2rgb(float H, float S, float I, uint8_t* rgb, uint8_t range) {
  int r, g, b;
  H = fmod(H, 360.0);              // cycle H around to 0-360 degrees
  H = M_PI * H / 180.0;            // Convert to radians.
  S = S > 0 ? (S < 1 ? S : 1) : 0; // clamp S and I to interval [0,1]
  I = I > 0 ? (I < 1 ? I : 1) : 0;

  // Math! Thanks in part to Kyle Miller.
  if(H < 2.09439) {
    r = I / 3 * (1 + S * cos(H) / cos(1.047196667 - H));
    g = I / 3 * (1 + S * (1 - cos(H) / cos(1.047196667 - H)));
    b = I / 3 * (1 - S);
  } else if(H < 4.188787) {
    H = H - 2.09439;
    g = I / 3 * (1 + S * cos(H) / cos(1.047196667 - H));
    b = I / 3 * (1 + S * (1 - cos(H) / cos(1.047196667 - H)));
    r = I / 3 * (1 - S);
  } else {
    H = H - 4.188787;
    b = I / 3 * (1 + S * cos(H) / cos(1.047196667 - H));
    r = I / 3 * (1 + S * (1 - cos(H) / cos(1.047196667 - H)));
    g = I / 3 * (1 - S);
  }

  rgb[0] = roundf(pow(r, gamma_corr) * range);
  rgb[1] = roundf(pow(g, gamma_corr) * range);
  rgb[2] = roundf(pow(b, gamma_corr) * range);
}

#define CLAMP(value, min, max) (value > max ? max : (value < min ? min : value))
#define HUE_ANGLE 60.0
#define debug(f, a...) fprintf(stderr, f "\n", a)

void
hsv2rgb(float h, float s, float v, uint8_t* rgb, uint8_t range) {
  h = fmod(h, 360);
  h = CLAMP(h, 0, 360);
  s = CLAMP(s, 0, 1);
  v = CLAMP(v, 0, 1);
  float c = v * s;
  float x = c * (1 - fabsf(fmod((h / HUE_ANGLE), 2) - 1));
  float y = c * fmod((h / HUE_ANGLE), 1);
  float m = v - c;
  float rp, gp, bp;

  debug("h=%1.0f, x=%.1f, y=%.1f", h, x, y);

  if(h >= 0 && h < 60) {
    rp = c;
    gp = y;
    bp = 0;
  } else if(h >= 60 && h < 120) {
    rp = 1 - y;
    gp = c;
    bp = 0;
  } else if(h >= 120 && h < 180) {
    rp = 0;
    gp = c;
    bp = y;
  } else if(h >= 180 && h < 240) {
    rp = 0;
    gp = 1 - y;
    bp = c;
  } else if(h >= 240 && h < 300) {
    rp = y;
    gp = 0;
    bp = c;
  } else {
    rp = c;
    gp = 0;
    bp = 1 - y;
  }

  rgb[0] = roundf(pow((rp + m), gamma_corr) * range);
  rgb[1] = roundf(pow((gp + m), gamma_corr) * range);
  rgb[2] = roundf(pow((bp + m), gamma_corr) * range);

  // debug ("hsv=%f,%f,%f, ---> rgb=%d,%d,%d", h, s, v, *r_r, *r_g, *r_b);
}

void
hsv2rgb_rainbow(float h, float s, float v, uint8_t* rgb, uint8_t range) {
  float rp, gp, bp;
  float c, m, z;
  h = fmod(h, 360);
  h = CLAMP(h, 0, 360);
  s = CLAMP(s, 0, 1);
  v = CLAMP(v, 0, 1);
  c = v * s;
  // x = c * (1 - fabsf (fmod ((h / HUE_ANGLE), 2) - 1));
  //  y = c * fmod((h / HUE_ANGLE), 1);
  m = v - c;

  //  debug ("h=%1.0f, x=%.1f, y=%.1f", h, x, y);

  if(h < 225) {
    z = fmod(h / 45, 1) * c;
  } else {
    z = fmod((h - 225) / 135, 1) * c;
  }

  // red -> orange
  if(h >= 0 && h < 45) {
    rp = c;
    gp = z * 2 / 3;
    bp = 0;

    // orange -> yellow
  } else if(h >= 45 && h < 90) {

    rp = c;
    gp = (c * 2 + z) / 3;
    bp = 0;

    // yellow -> green
  } else if(h >= 90 && h < 135) {
    rp = c - z;
    gp = c;
    bp = 0;

    // green -> aqua
  } else if(h >= 135 && h < 180) {
    rp = 0;
    gp = c - z / 3;
    bp = z / 3;

    // aqua -> blue
  } else if(h >= 180 && h < 225) {
    rp = 0;
    gp = (c - z) * 2 / 3;
    bp = (c + z * 2) / 3;

    // blue -> purple -> red
  } else /*if(h >= 225 && h < 292.5)*/ {
    rp = z;
    gp = 0;
    bp = c - z;
  } /* else {
       rp = c;
       gp = 0;
       bp = c-y;
   }*/

  rgb[0] = roundf(pow((rp + m), gamma_corr) * range);
  rgb[1] = roundf(pow((gp + m), gamma_corr) * range);
  rgb[2] = roundf(pow((bp + m), gamma_corr) * range);

  // debug ("hsv=%f,%f,%f, ---> rgb=%d,%d,%d", h, s, v, *r_r, *r_g, *r_b);
}
uint8_t
gamma_u8(uint8_t v, uint8_t range, float gamma_corr) {
  float f = (float)v / (float)range;

  return roundf(pow(f, gamma_corr) * (float)range);
}

uint16_t
rgb888_to_rgb565(const uint8_t* rgb) {
  union {
    uint16_t ui;
    struct {
      int b : 5;
      int g : 6;
      int r : 5;
    } bgr;
  } c;
  c.bgr.r = rgb[0] >> 3;
  c.bgr.g = rgb[1] >> 2;
  c.bgr.b = rgb[2] >> 3;
  return c.ui;
}

float
int8_to_float(uint8_t i) {
  return (float)i / 255;
}

void
make_hue_table(uint8_t steps, uint8_t sat, uint8_t intensity, bool u16, uint8_t range, int convert_fn_index) {
  uint8_t rgb[3];
  uint8_t i;

  for(i = 0; i < steps; i++) {
    float hue = i * 360.0 / steps;
    convert_functions[convert_fn_index](hue, int8_to_float(sat), int8_to_float(intensity), rgb, range);
    //	hsi2rgb(hue, int8_to_float(sat), int8_to_float(intensity), rgb, range);

    if(u16)
      printf("  0x%04x, /* {%3d,%3d,%3d} */\n", rgb888_to_rgb565(rgb), rgb[0], rgb[1], rgb[2]);
    else
      printf(range == 255 ? "  { 0x%02x, 0x%02x, 0x%02x },\n" : "  { %3d, %3d, %3d },\n", rgb[0], rgb[1], rgb[2]);
  }
}

void
usage(char* argv0) {
  printf("Usage: %s [steps] [use-16bit(true|false)] [saturation] [intensity] [range] [fn-index]\n"
         "fn-index may be:\n"
         "  0  HSI to RGB\n"
         "  1  HSV to RGB\n"
         "  2  HSV to RGB (rainbow)\n"
         "\n",
         basename(argv0));
  exit(1);
}

int
main(int argc, char* argv[]) {
  int steps = 64, sat = 255, intensity = 255, range = 255, convert_fn_index = 0;
  bool use16bit = false;

  if(argc > 1) {
    if(!strcasecmp(argv[1], "-h") || !strcasecmp(argv[1], "-help") || !strcasecmp(argv[1], "--help"))
      usage(argv[0]);
    steps = atoi(argv[1]);
  }
  if(argc > 2) {
    if(!strcmp(argv[2], "1") || !strcasecmp(argv[2], "true"))
      use16bit = true;
  }
  if(argc > 3) {
    sat = atoi(argv[3]);
  }
  if(argc > 4) {
    intensity = atoi(argv[4]);
  }
  if(argc > 5) {
    range = atoi(argv[5]);
  }
  if(argc > 6) {
    convert_fn_index = atoi(argv[6]);
  }
  if(argc > 7) {
    gamma_corr = atof(argv[7]);
  }

  make_hue_table(steps, sat, intensity, use16bit, range, convert_fn_index);
}
