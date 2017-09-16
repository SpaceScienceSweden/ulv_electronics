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


# c++ code has a nice struct with all of the colors, names, RGB
# values. this doesn't seem to be exposed in a helpful way.
# colorrefs = pcbnew.g_ColorRefs


# some of the color names are modified to match svr colors.
# the real answer is to get the rgb values from colorrefs.
colornames = {
    pcbnew.BLACK:         'BLACK',         
    pcbnew.DARKDARKGRAY:  'DARKSLATEGRAY', # 'DARKDARKGRAY',  
    pcbnew.DARKGRAY:      'DARKGRAY',      
    pcbnew.LIGHTGRAY:     'LIGHTGRAY',     
    pcbnew.WHITE:         'WHITE',         
    pcbnew.LIGHTYELLOW:   'LIGHTYELLOW',   
    pcbnew.DARKBLUE:      'DARKBLUE',      
    pcbnew.DARKGREEN:     'DARKGREEN',     
    pcbnew.DARKCYAN:      'DARKCYAN',      
    pcbnew.DARKRED:       'DARKRED',       
    pcbnew.DARKMAGENTA:   'DARKMAGENTA',   
    pcbnew.DARKBROWN:     'MAROON', # 'DARKBROWN',     
    pcbnew.BLUE:          'BLUE',          
    pcbnew.GREEN:         'GREEN',         
    pcbnew.CYAN:          'CYAN',          
    pcbnew.RED:           'RED',           
    pcbnew.MAGENTA:       'MAGENTA',       
    pcbnew.BROWN:         'BROWN',         
    pcbnew.LIGHTBLUE:     'LIGHTBLUE',     
    pcbnew.LIGHTGREEN:    'LIGHTGREEN',    
    pcbnew.LIGHTCYAN:     'LIGHTCYAN',     
    pcbnew.LIGHTRED:      'INDIANRED',  # 'LIGHTRED',      
    pcbnew.LIGHTMAGENTA:  'LIGHTPINK',  # 'LIGHTMAGENTA',  
    pcbnew.YELLOW:        'YELLOW',        
    pcbnew.PUREBLUE:      'MEDIUMBLUE', # 'PUREBLUE',      
    pcbnew.PUREGREEN:     'LAWNGREEN',  # 'PUREGREEN',     
    pcbnew.PURECYAN:      'DARKTURQUOISE', # 'PURECYAN',      
    pcbnew.PURERED:       'FIREBRICK',  # 'PURERED',       
    pcbnew.PUREMAGENTA:   'DARKORCHID', # PUREMAGENTA',   
    pcbnew.PUREYELLOW:    'KHAKI',      # PUREYELLOW'     
}

padshapes = {
    pcbnew.PAD_SHAPE_CIRCLE:  "PAD_SHAPE_CIRCLE",
    pcbnew.PAD_SHAPE_OVAL:    "PAD_SHAPE_OVAL",
    pcbnew.PAD_SHAPE_RECT:    "PAD_SHAPE_RECT",
    pcbnew.PAD_SHAPE_TRAPEZOID: "PAD_SHAPE_TRAPEZOID"    
}
# new in the most recent kicad code
if hasattr(pcbnew, 'PAD_SHAPE_ROUNDRECT'):
    padshapes[pcbnew.PAD_SHAPE_ROUNDRECT] = "PAD_SHAPE_ROUNDRECT",


    
board = pcbnew.LoadBoard('fieldmill9.kicad_pcb')

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
    name = 'svgs/' + value + '.svg'
    # A4 is approximately 21x29
    dwg = svgwrite.Drawing(name, size=('21cm', '29cm'), profile='full', debug=True)

    dwg.viewbox(width=boardwidth, height=boardheight, minx=boardxl, miny=boardyl)
    background = dwg.add(dwg.g(id='bg', stroke='black'))
    background.add(dwg.rect(insert=(boardxl, boardyl), size=(boardwidth, boardheight), stroke='black', fill='white', stroke_width=3e5))

    tsz = 2.5e6
    refs = ', '.join([m.GetReference() for m in ml])
    # TODO: textarea instead? requires a different SVG profile
    dwg.add(dwg.text('%s (%i pcs)' % (value, len(ml)), insert=(boardxl + tsz, boardyl - tsz*1.5), fill = "rgb(0,0,0)", style='font-size:%f;font-weight:bold' % tsz))
    dwg.add(dwg.text(refs,                             insert=(boardxl + tsz, boardyl - tsz*0.5), fill = "rgb(0,0,0)", style='font-size:%f;font-weight:bold' % tsz))

    svglayers = {}
    for colorcode, colorname in colornames.items():
        layer = dwg.add(dwg.g(id='layer_'+colorname, stroke=colorname.lower(), stroke_linecap="round"))
        svglayers[colorcode] = layer

    for m in ml:
        bb = m.GetFootprintRect()
        global r
        r = m.Reference()
        dwg.add(dwg.rect(insert=bb.GetPosition(), size=bb.GetSize(), stroke='black', fill='none', stroke_width=3e5))

        tsz = min(bb.GetWidth() / len(m.GetReference()), bb.GetHeight() * 0.7)
        tx = bb.GetX() + 3e5
        ty = bb.GetY() + bb.GetHeight() * 0.5 + tsz * 0.5
        dwg.add(dwg.text(m.GetReference(), insert=(tx, ty), fill = "rgb(0,0,0)", style='font-size:%f;font-weight:bold' % tsz))

    dwg.save()

print("done")

