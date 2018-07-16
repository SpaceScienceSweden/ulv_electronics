#!/usr/bin/env python2
# This file makes .kicad_pcb modules not found in CSV BOM
# virtual and those that do normal+insert
# There are some bugs in the pcbnew SWIG interface, namely:
#
#  16:21:48: Debug: Skipping general section token 'links' 
#  16:21:48: Debug: Skipping general section token 'area' 
#  16:21:48: Debug: Skipping general section token 'drawings' 
#  16:21:48: Debug: Skipping general section token 'tracks' 
#  16:21:48: Debug: Skipping general section token 'zones' 
#  16:21:48: Debug: Skipping general section token 'symbol' 
#
# This causes some stuff in the saved .kicad_pcb to be missing
# compared to the original file. This doesn't seem to be very
# dangerous since loading and saving in the pcbnew GUI brings
# most of the missing things back. But it might still be a good
# idea to only git add -p the actual changes of interest,
# or git checkout -p to remove the irrelevant ones.
import pcbnew
import csv
import sys

refs = set()

rev = "1.0"

with open('cpu4_%s.csv' % rev, 'rb') as csvfile:
  reader = csv.reader(csvfile);
  next(reader) # skip header 
  for row in reader:
    if len(row) == 0:
      break
    else:
      for r in row[1].split(' '):
        if not r in refs:
          refs |= {r}
        else:
          print('%s already in refs' % r)
          sys.exit(1)

filename = 'cpu4.kicad_pcb'
board = pcbnew.LoadBoard(filename)

it = board.GetModules().begin()
while it is not None:
  # Set to normal+insert or virtual depending on if ref
  # is in the BOM. Set solder paste clearance to -10 mm
  # to get rid of B.Paste for virtual parts.
  # Don't touch the pin headers - they're to be soldered
  # by hand
  headers = ['P1', 'P5', 'P6', 'P7', 'P12', 'P13']

  if it.GetReference() in headers:
    # Do nothing
    pass
  elif it.GetReference() in refs:
    it.SetAttributes(pcbnew.MOD_CMS)
    #it.SetLocalSolderPasteMargin(0)
  else:
    it.SetAttributes(pcbnew.MOD_VIRTUAL)
    it.SetLocalSolderPasteMargin(-10000000)
  it = it.Next()

pcbnew.SaveBoard(filename, board)



