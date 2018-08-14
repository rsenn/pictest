#include <math.h>
#include <stdio.h>

#define NUM_NOTES (sizeof(note_names) / sizeof(note_names[0]))

const char* const note_names[] = {"C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B"};

double frequencies[127];

int
main() {
  int octave = -1;
  int note = 0;
  int x;

  double a = 440.0; // a is 440 hz...

  for(x = 0; x < 127; ++x) {

    frequencies[x] = (a / 32.0) * pow(2, (((double)x - 9) / 12));

    printf("%3d: %-2s%2i = %15.9lf Hz\n", x, note_names[note], octave, frequencies[x]);

    if(++note == NUM_NOTES) {
      note = 0;
      ++octave;
    }
  }
}