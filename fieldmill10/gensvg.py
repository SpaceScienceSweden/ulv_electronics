# Copyright [2017] [Miles McCoo]

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# this script is a basic svg generator for pcbnew.
# the point of the script is more as a teaching tool
# there are a number of ways in which is is deficient.


import pcbnew
    
board = pcbnew.LoadBoard('fieldmill10.kicad_pcb')

boardbbox = board.ComputeBoundingBox()
boardxl = boardbbox.GetX()
boardyl = boardbbox.GetY()
boardwidth = boardbbox.GetWidth()
boardheight = boardbbox.GetHeight()


# coordinate space of kicad_pcb is in mm. At the beginning of
# https://en.wikibooks.org/wiki/Kicad/file_formats#Board_File_Format
# "All physical units are in mils (1/1000th inch) unless otherwise noted."
# then later in historical notes, it says,
# As of 2013, the PCBnew application creates ".kicad_pcb" files that begin with
# "(kicad_pcb (version 3)". All distances are in millimeters. 

# the internal coorinate space of pcbnew is 10E-6 mm. (a millionth of a mm)
# the coordinate 121550000 corresponds to 121.550000 

SCALE = 1000000.0


import sys, os
import svgwrite

# Extract modules, group by prefix,value
md = {}
for m in board.GetModules():
    # Skip virtual components
    if m.GetAttributes() == 2:
        continue

    k = (m.GetReference()[0], m.GetValue())
    if not k in md:
        md[k] = []
    md[k].append(m)


print("working in the dir " + os.getcwd())

for k, ml in md.iteritems():
    prefix = k[0]
    value = k[1]
    name = 'svgs/' + prefix + value + '.svg'
    # A4 is approximately 21x29
    dwg = svgwrite.Drawing(name, size=('10cm', '12cm'), profile='full', debug=True)

    scale = 1.0
    dwg.viewbox(width=boardwidth*scale*1.1, height=boardheight*scale*1.1, minx=0, miny=0)
    mover = dwg.add(dwg.g(id='bg', stroke='black', transform='translate(%f,%f)' % (-boardxl * scale / 1.1, -boardyl * scale  / 1.1)))
    background = mover.add(dwg.g(id='bg', stroke='black', transform='scale(%f,%f)' % (scale,scale)))
    background.add(dwg.rect(insert=(boardxl, boardyl), size=(boardwidth, boardheight), stroke='none', fill='white', stroke_width=3e5))

    tsz = 2.5e6
    background.add(dwg.text('%s (%i pcs)' % (value, len(ml)), insert=(boardxl + tsz, boardyl - tsz*3.5), fill = "rgb(0,0,0)", style='font-size:%f;font-weight:bold' % tsz))

    # Seems SVG doesn't do word wrap, so split the refs up manually
    ref1 = ', '.join([m.GetReference() for m in ml[0:10]])
    ref2 = ', '.join([m.GetReference() for m in ml[10:20]])
    ref3 = ', '.join([m.GetReference() for m in ml[20:]])

    background.add(dwg.text(ref1, insert=(boardxl + tsz, boardyl - tsz*2.5), fill = "rgb(0,0,0)", style='font-size:%f;font-weight:bold' % tsz))
    background.add(dwg.text(ref2, insert=(boardxl + tsz, boardyl - tsz*1.5), fill = "rgb(0,0,0)", style='font-size:%f;font-weight:bold' % tsz))
    background.add(dwg.text(ref3, insert=(boardxl + tsz, boardyl - tsz*0.5), fill = "rgb(0,0,0)", style='font-size:%f;font-weight:bold' % tsz))

    #mover = dwg.add(dwg.g(id='bg', stroke='black', transform='translate(%f,%f)' % (0, 0)))
    #cuts1 = mover.add(dwg.g(id='bg', stroke='black', transform='translate(%f,%f)' % ( (boardxl- boardwidth*scale),0)))
    cuts2 = mover.add(dwg.g(id='bg', stroke='black', transform='translate(%f,%f) scale(%f,%f) translate(%f,%f)' % (boardxl*scale + boardwidth*scale, 0, -scale,scale, -boardxl, 0)))
    for d in board.GetDrawings():
        if d.GetLayerName() == 'Edge.Cuts':
            if d.GetShapeStr() == 'Line':
                cuts2.add(dwg.line(start=d.GetStart(), end=d.GetEnd(), stroke_width=3e5))
            elif d.GetShapeStr() == 'Circle' or d.GetShapeStr() == 'Arc':
                # Arcs are drawn as circles because SVG arc are a huge pain
                cuts2.add(dwg.circle(center=d.GetStart(), r=d.GetRadius(), stroke_width=3e5, fill='none'))
            #elif d.GetShapeStr() == 'Arc':
            #    Maybe do this later
            #    cuts2.add(dwg.path('M %f %f A %f %f %f %i %i %f %f' % (d.GetArcStart().x, d.GetArcStart().y, d.GetRadius(), d.GetRadius(), 0, 0, 0, d.GetArcEnd().x, d.GetArcEnd().y), stroke_width=3e5, fill='none'))

    for m in ml:
        bb = m.GetFootprintRect()
        bbx = boardwidth + boardxl - (bb.GetX() - boardxl) - bb.GetWidth()
        bby = bb.GetY()

        r = m.Reference()
        background.add(dwg.rect(insert=(bbx, bby), size=bb.GetSize(), stroke='black', fill='none', stroke_width=3e5))

        tsz = min(bb.GetWidth() / len(m.GetReference()), bb.GetHeight() * 0.7)
        tx = bbx + 3e5
        ty = bby + bb.GetHeight() * 0.5 + tsz * 0.5
        background.add(dwg.text(m.GetReference(), insert=(tx, ty), fill = "rgb(0,0,0)", style='font-size:%f;font-weight:bold' % tsz))

    dwg.save()

print("done")

