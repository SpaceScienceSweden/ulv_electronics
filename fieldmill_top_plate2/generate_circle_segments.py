#!/usr/bin/python3
import math

cx = 100
cy = 100

spokes = 4
clearance = 0.2
segmentclearance = 0.15 #for DRC
#width of inner gnd ring (between motor hole and pie pieces)
ring = 0.8

#pie pieces
r1 = 11.25 + ring + 2*clearance
r2 = 39

rr = r1 - clearance - ring/2

edge = 42.5 #0.5 * 85x85 mm

#TACH holes (P11 & P12)
a11 = 300*math.pi/180
a12 = 330*math.pi/180
rp  = 43


segments = 16

def draw_arc(r, a1, a2, segments):
    for i in range(segments+1):
        a = a1 + (a2 - a1)*i/segments
        print('        (xy %f %f)' % (cx + r*math.cos(a), cy + r*math.sin(a)))

def draw_slice(r1, r2, a1, a2, clearance1, clearance2, segments):
    #angle offsets for getting parallel clearance
    axb1 = math.atan(clearance1/2/r2)
    exf1 = math.atan(clearance1/2/r1)
    axb2 = math.atan(clearance2/2/r2)
    exf2 = math.atan(clearance2/2/r1)
    #print('Angle offsets: %f %f' % (180/math.pi*axb, 180/math.pi*exf))
    draw_arc(r2, a1+axb2, a2-axb1, segments)
    draw_arc(r1, a2-exf1, a1+exf2, segments)

for i in range(6):
    a1 = 2*math.pi*(i+1)/6
    a2 = 2*math.pi*(i+2)/6
    spokea = 0.5 if i % 2 == 1 else spokes
    spokeb = 0.5 if i % 2 == 0 else spokes

    print('''
  (zone (net %i) (net_name "/SENSOR%i") (layer F.Cu) (tstamp 0) (hatch edge 0.508)
    (connect_pads yes (clearance %f))
    (min_thickness 0.254)
    (fill yes (arc_segments 16) (thermal_gap 0.508) (thermal_bridge_width 0.508))
    (polygon
      (pts
''' % (i+2,i+1, segmentclearance))

    draw_slice(r1, r2, a1, a2, spokeb+2*clearance, spokea+2*clearance, segments)
    print('''
      )
    )
  )
''')

    #spoke
    print('''
  (zone (net 1) (net_name "GND") (layer F.Cu) (tstamp 0) (hatch edge 0.508)
    (connect_pads yes (clearance %f))
    (min_thickness 0.254)
    (fill yes (arc_segments 16) (thermal_gap 0.508) (thermal_bridge_width 0.508))
    (polygon
      (pts
''' % segmentclearance)

    draw_slice(r1-clearance-ring, r2+clearance+1, a1, a1, spokea, spokea, 4)
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
    (connect_pads yes (clearance %f))
    (min_thickness 0.254)
    (fill yes (arc_segments 16) (thermal_gap 0.508) (thermal_bridge_width 0.508))
    (polygon
      (pts
        (xy %f %f)
        (xy %f %f)
        (xy %f %f)
''' % (
    segmentclearance,
    cx + edge*math.cos(a2), cy + edge*math.sin(a2),
    cx + math.sqrt(2)*edge*math.cos(0.5*(a1+a2)), cy + math.sqrt(2)*edge*math.sin(0.5*(a1+a2)),
    cx + edge*math.cos(a1), cy + edge*math.sin(a1),
))

    draw_arc(r2+clearance, a1, a2, segments)
    print('''
      )
    )
  )
''')

#via ring
nring = 36
for i in range(nring):
    a1 = 2*math.pi*(i)/nring
    a2   = 2*math.pi*(i+1)/nring

    print('  (via (at %f %f) (size 0.6) (drill 0.3) (layers F.Cu B.Cu) (net 1))' %
        (cx + rr*math.cos(a1), cy + rr*math.sin(a1))
    )

    m = 6
    for j in range(m):
        a3 = a1 + (a2 - a1)*j/m
        a4 = a1 + (a2 - a1)*(j+1)/m
        print('  (segment (start %f %f) (end %f %f) (width %f) (layer F.Cu) (net 1))' % (
            cx + rr*math.cos(a3), cy + rr*math.sin(a3),
            cx + rr*math.cos(a4), cy + rr*math.sin(a4),
            ring
        ))

print('''
  (module SCUBE:M3_PTH (layer F.Cu) (tedit 57ADC4E8) (tstamp 584875C3)
    (at %f %f)
    (path /58487826)
    (fp_text reference P11 (at 0 -3.175) (layer F.SilkS)
      (effects (font (size 1 1) (thickness 0.15)))
    )
    (fp_text value M3 (at 0 -4.445) (layer F.Fab)
      (effects (font (size 1 1) (thickness 0.15)))
    )
    (pad 1 thru_hole circle (at 0 0) (size 4 4) (drill 3.2) (layers *.Cu *.Mask F.SilkS)
      (net 1 GND))
  )

  (module SCUBE:M3_PTH (layer F.Cu) (tedit 57ADC4E8) (tstamp 584875C8)
    (at %f %f)
    (path /58487879)
    (fp_text reference P12 (at 0 -3.175) (layer F.SilkS)
      (effects (font (size 1 1) (thickness 0.15)))
    )
    (fp_text value M3 (at 0 -4.445) (layer F.Fab)
      (effects (font (size 1 1) (thickness 0.15)))
    )
    (pad 1 thru_hole circle (at 0 0) (size 4 4) (drill 3.2) (layers *.Cu *.Mask F.SilkS)
      (net 1 GND))
  )
''' % (
    cx + rp*math.cos(a11), cy + rp*math.sin(a11),
    cx + rp*math.cos(a12), cy + rp*math.sin(a12),
))

