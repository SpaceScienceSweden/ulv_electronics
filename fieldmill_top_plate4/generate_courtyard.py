#!/usr/bin/python3
import math

cx = 100
cy = 100

#pie pieces
r1 = 13.25
r2 = 40

segments = 16

def draw_arc(r, a1, a2, segments):
    for i in range(segments+1):
        a = a1 + (a2 - a1)*i/segments
        x = cx + r*math.cos(a)
        y = cy + r*math.sin(a)

        if i > 0:
            print('  (gr_line (start %f %f) (end %f %f) (layer F.CrtYd) (width 2.0))' % (xlast, ylast, x, y))
        else:
            xfirst = x
            yfirst = y
        xlast = x
        ylast = y
    return xfirst, yfirst, xlast, ylast

def draw_slice(r1, r2, a1, a2, segments):
    a, b, c, d = draw_arc(r2, a1, a2, segments)
    e, f, g, h = draw_arc(r1, a2, a1, segments)
    print('  (gr_line (start %f %f) (end %f %f) (layer F.CrtYd) (width 2.0))' % (a, b, g, h))

for i in range(6):
    a1 = 2*math.pi*(i+1)/6
    a2 = 2*math.pi*(i+2)/6

    draw_slice(r1, r2, a1, a2, segments)

