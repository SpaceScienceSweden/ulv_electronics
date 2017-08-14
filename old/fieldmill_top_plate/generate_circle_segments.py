#!/usr/bin/python3
import math

cx = 100
cy = 100

clearance = 0.5

r1 = 17.5+clearance
r2 = 42

edge = 42.5 #0.5 * 85x85 mm

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
    a1 = 2*math.pi*(i+1)/6
    a2   = 2*math.pi*(i+2)/6

    print('''
  (zone (net %i) (net_name "/SENSOR%i") (layer F.Cu) (tstamp 0) (hatch edge 0.508)
    (connect_pads yes (clearance 0.508))
    (min_thickness 0.254)
    (fill yes (arc_segments 16) (thermal_gap 0.508) (thermal_bridge_width 0.508))
    (polygon
      (pts
''' % (i+2,i+1))

    draw_slice(r1, r2, a1, a2, clearance)
    print('''
      )
    )
  )
''')

for i in range(4):
    a1 = math.pi/2*i
    a2 = math.pi/2*(i+1)

    print('''
  (zone (net 1) (net_name "GND") (layer F.Cu) (tstamp 0) (hatch edge 0.508)
    (connect_pads yes (clearance 0.508))
    (min_thickness 0.254)
    (fill yes (arc_segments 16) (thermal_gap 0.508) (thermal_bridge_width 0.508))
    (polygon
      (pts
        (xy %f %f)
''' % (
    #cx + edge*math.cos(a2), cy + edge*math.sin(a2),
    cx + math.sqrt(2)*edge*math.cos(0.5*(a1+a2)), cy + math.sqrt(2)*edge*math.sin(0.5*(a1+a2)),
   #cx + edge*math.cos(a1), cy + edge*math.sin(a1),
))

    draw_arc(edge, a1, a2)
    print('''
      )
    )
  )
''')

