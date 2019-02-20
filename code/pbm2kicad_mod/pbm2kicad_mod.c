#include <stdio.h>
#include <stdlib.h>

//maximum dimension, for static alloc
#define MAXRES 512

//Different rect optimization methods:
//
// 0 -> 1494 rects (scan left-right, top-bottom)
// 1 -> 2225 rects (shuffle starting xy's)
// 2 -> 1894 rects (shuffle + diagonal scan for improvement)
// 3 -> 1557 rects (exhaustive greedy search)
//
//Method 0 always seems to end up best
#define METHOD 0

typedef struct {
  int x, y;
} xy;

//.bss stuff
int w, h;
char bits[MAXRES][MAXRES];
xy xys[MAXRES*MAXRES];

int largestrect(int x, int y, int *bestw, int *besth) {
  *bestw = 1;
  *besth = 1;
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
    if (maxw*h > (*bestw)*(*besth)) {
      *bestw = maxw;
      *besth = h;
    }
  }
  return (*bestw)*(*besth);
}

int main(int argc, const char **argv) {
  if (argc < 3) {
    fprintf(stderr, "USAGE: %s modulename pixel-size-in-mm [--invert]\n", argv[0]);
    return 1;
  }
  const char *modulename = argv[1];
  float pixelsz = atof(argv[2]);
  int invert = argc > 3;

  char line[128];
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

  sscanf(line, "%i %i", &w, &h);
  fprintf(stderr, "%i x %i\n", w, h);
  if (w <= 0 || h <= 0) {
    fprintf(stderr, "bad size, bad PBM?\n");
    return 1;
  }

  int nxys = 0;

  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int b;
      scanf("%1i", &b);
      bits[y][x] = invert ? !b : b;
      if (bits[y][x]) {
        xys[nxys].x = x;
        xys[nxys].y = y;
        nxys++;
      }
    }
  }

  //shuffle xys
  //I'm lazy so just do a bunch of pairwise shuffles
  for (int n = 0; n < 10*nxys; n++) {
    int a = rand() % nxys;
    int b = rand() % nxys;
    xy temp = xys[a];
    xys[a] = xys[b];
    xys[b] = temp;
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
#if METHOD == 0
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      //observation: all lines above and all bits to the left of x are zero by this point
      //simply look for the largest rectangle of bits, greedily
      //don't bother with overlap, it's probably a bad idea anyway
      if (bits[y][x] != 1) {
        continue;
      }

      int bestx = x;
      int besty = y;
      int bestw, besth;
      int besta = largestrect(x, y, &bestw, &besth);

#elif METHOD == 1 || METHOD == 2
  for (int n = 0; n < nxys; n++) {
    int x = xys[n].x;
    int y = xys[n].y;
    if (x == 21 && y == 1) {
      fprintf(stderr, "saw 21,1 in the loop\n");
    }

    if (bits[y][x] != 1) {
      continue;
    }

    int bestx = x;
    int besty = y;
    int bestw, besth;
    int besta = largestrect(x, y, &bestw, &besth);

    //move diagonally up and left, hoping for even larger rectangles
#if METHOD == 2
    for (int xx = x-1, yy = y-1; xx >= 0 && yy >= 0; xx--, yy--) {
      int ww, hh;
      int aa = largestrect(xx, yy, &ww, &hh);
      if (aa > besta) {
        bestx = xx;
        besty = yy;
        bestw = ww;
        besth = hh;
        besta = aa;
      }
    }
#endif
#elif METHOD == 3 //exhaustive search
  for (int n = 0; n < nxys; n++) {
    int nnz = 0;
    int bestx, besty, bestw, besth, besta = 0;
    for (int n = 0; n < nxys; n++) {
      int x = xys[n].x;
      int y = xys[n].y;
      if (bits[y][x] != 1) {
        continue;
      }
      //count number of non-zeroes
      nnz++;
      int ww, hh;
      int aa = largestrect(x, y, &ww, &hh);
      if (aa > besta) {
        bestx = x;
        besty = y;
        bestw = ww;
        besth = hh;
        besta = aa;
      }
    }
    if (nnz == 0) {
      break;
    }

#endif

      float x1 = bestx*pixelsz;
      float y1 = besty*pixelsz;
      float x2 = (bestx+bestw)*pixelsz;
      float y2 = (besty+besth)*pixelsz;
      printf("  (fp_poly (pts (xy %f %f) (xy %f %f) (xy %f %f) (xy %f %f)) (layer F.Cu) (width 0))\n",
        x2, y1, x2, y2, x1, y2, x1, y1);
      nrects++;

      //zero the bits
      for (int y2 = besty; y2 < besty+besth; y2++) {
        for (int x2 = bestx; x2 < bestx+bestw; x2++) {
          if (bits[y2][x2] == 0) {
            fprintf(stderr, "There's something wrong with the rect logic @ %i,%i (%ix%i @ %i,%i)\n", x2, y2, bestw, besth, bestx, besty);
            return 1;
          }
          bits[y2][x2] = 0;
        }
      }

#if METHOD == 2
  //it can happen that the bit we started at didn't get included in the best rect
  //if so then make sure it's tried again
  if (bits[y][x] == 1) {
    n--;
  }
#endif

#if METHOD == 0
    }
#endif
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
