#!/usr/bin/env python3
# Filters PnP file, making sure all references in BOM are present and removes those that shouldn't be in the output
import csv
import sys

refs = set()

with open('fieldmill10_.csv', newline='') as csvfile:
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
#print(refs)
#print(len(refs))

pnprefs = set()
pnplines = []
modified = False
with open('gerber/fieldmill10-all.pos', 'r') as pnpfile:
  for row in pnpfile:
    r = row.split(' ')[0]
    if r[0] == '#':
      pnplines.append(row)
    else:
      if r in refs:
        pnplines.append(row)
        pnprefs |= {r}
      else:
        modified = True

if pnprefs != refs:
  print('Did not see every ref in the PnP file')
  print(refs - pnprefs)
  sys.exit(1)

if modified:
  with open('gerber/fieldmill10-all.pos', 'w') as pnpfile:
    pnpfile.write(''.join(pnplines))
  print('Updated PnP file')

