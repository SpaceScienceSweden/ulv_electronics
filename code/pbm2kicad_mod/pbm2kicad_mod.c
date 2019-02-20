#include <stdio.h>
#include <stdlib.h>

#define MAXRES 512

//.bss stuff
char bits[MAXRES][MAXRES];

int main(int argc, const char **argv) {
  if (argc < 3) {
    fprintf(stderr, "USAGE: %s modulename pixel-size-in-mm [--invert]\n", argv[0]);
    return 1;
  }
  const char *modulename = argv[1];
  float pixelsz = atof(argv[2]);
  int invert = argc > 3;

  char line[32];
  fgets(line, sizeof(line), stdin);
  if (line[0] != 'P' || line[1] != '1') {
    fprintf(stderr, "Not a P1 file. Use convert input.foo -compress none output.pbm\n");
    return 1;
  }
  // skip past comments
  do {
    fgets(line, sizeof(line), stdin);
    if (feof(stdin)) return 1;
  } while (line[0] == '#');

  int w, h;
  sscanf(line, "%i %i", &w, &h);
  
  fprintf(stderr, "%i x %i\n", w, h);

  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int b;
      scanf("%i", &b);
      bits[y][x] = invert ? !b : b;
    }
  }

  printf("(module %s (layer F.Cu)\n", modulename);
  printf("  (fp_text reference REF** (at 0 -2) (layer F.SilkS) hide\n");
  printf("    (effects (font (size 1 1) (thickness 0.15)))\n");
  printf("  )\n");
  printf("  (fp_text value %s (at 0 -4) (layer F.Fab)\n", modulename);
  printf("    (effects (font (size 1 1) (thickness 0.15)))\n");
  printf("  )\n");

  //convert bits to polygons
  int nrects = 0;
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      //observation: all lines above and all bits to the left of x are zero by this point
      //simply look for the largest rectangle of bits, greedily
      //don't bother with overlap, it's probably a bad idea anyway
      if (bits[y][x] != 1) {
        continue;
      }

      int bestw = 1, besth = 1;
      int maxw = w-x;
      for (int y2 = y; y2 < h && maxw > 0; y2++) {
        //find the width of this line
        int x2 = x;
        for (; x2 <= x+maxw; x2++) {
          if (bits[y2][x2] == 0) {
            break;
          }
        }
        int w2 = x2 - x;
        maxw = w2 < maxw ? w2 : maxw;
        //if (maxw > 1) fprintf(stderr, "y2=%i -> maxw = %i\n", y2, maxw);
        int h = y2 - y + 1;
        if (maxw*h > bestw*besth) {
          bestw = maxw;
          besth = h;
        }
      }

      float x1 = x*pixelsz;
      float y1 = y*pixelsz;
      float x2 = (x+bestw)*pixelsz;
      float y2 = (y+besth)*pixelsz;
      printf("  (fp_poly (pts (xy %f %f) (xy %f %f) (xy %f %f) (xy %f %f)) (layer F.Cu) (width 0))\n",
        x2, y1, x2, y2, x1, y2, x1, y1);
      nrects++;

      //zero the bits
      for (int y2 = y; y2 < y+besth; y2++) {
        for (int x2 = x; x2 < x+bestw; x2++) {
          if (bits[y2][x2] == 0) {
            fprintf(stderr, "There's something wrong with the rect logic @ %i,%i (%ix%i @ %i,%i)\n", x2, y2, bestw, besth, x, y);
            return 1;
          }
          bits[y2][x2] = 0;
        }
      }
    }
  }
  printf(")\n");

  fprintf(stderr, "%i rects\n", nrects);

  //sanity check: all bits should be zero
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      if (bits[y][x]) {
        fprintf(stderr, "Bit %i,%i still set\n", x, y);
        return 1;
      }
    }
  }

  return 0;
}
