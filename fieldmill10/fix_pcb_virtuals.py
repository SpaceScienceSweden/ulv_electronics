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

with open('fieldmill10_.csv', 'rb') as csvfile:
  reader = csv.reader(csvfile);
  next(reader) # skip header 
  for row in reader:
    if len(row) == 0:
      break
    else:
      for r in row[2].split(' '):
        if not r in refs:
          refs |= {r}
        else:
          print('%s already in refs' % r)
          sys.exit(1)

filename = 'fieldmill10.kicad_pcb'
board = pcbnew.LoadBoard(filename)

it = board.GetModules().begin()
while it is not None:
  # Set to normal+insert or virtual depending on if ref
  # is in the BOM
  it.SetAttributes(pcbnew.MOD_CMS if it.GetReference() in refs else pcbnew.MOD_VIRTUAL)
  it = it.Next()

pcbnew.SaveBoard(filename, board)



