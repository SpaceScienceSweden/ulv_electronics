#!/usr/bin/python3
import math

cx = 100
cy = 100

clearance = 4

r1 = 15+clearance
r2 = 40

segments = 16

def draw_arc(r, a1, a2):
    for i in range(segments+1):
        a = a1 + (a2 - a1)*i/segments
        print('        (xy %f %f)' % (cx + r*math.cos(a), cy + r*math.sin(a)))

def draw_slice(r1, r2, a1, a2, clearance):
    #angle offsets for getting parallel clearance
    axb = math.atan(clearance/2/r2)
    exf = math.atan(clearance/2/r1)
    #print('Angle offsets: %f %f' % (180/math.pi*axb, 180/math.pi*exf))
    draw_arc(r2, a1+axb, a2-axb)
    draw_arc(r1, a2-exf, a1+exf)

for i in range(6):
    a1 = 2*math.pi*i/6
    a2   = 2*math.pi*(i+1)/6

    print('''
  (zone (net %i) (net_name "/SENSOR%i") (layer F.Cu) (tstamp 0) (hatch edge 0.508)
    (connect_pads (clearance 0.508))
    (min_thickness 0.254)
    (fill yes (arc_segments 16) (thermal_gap 0.508) (thermal_bridge_width 0.508))
    (polygon
      (pts
''' % (i,i))

    draw_slice(r1, r2, a1, a2, clearance)
    print('''
      )
    )
  )
''')

