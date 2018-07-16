#!/usr/bin/env python3
# Filters PnP file, making sure all references in BOM are present and removes those that shouldn't be in the output
import csv
import sys

for rev in ["1.0"]:
 refs = set()
 with open('cpu4_%s.csv' % rev, newline='') as csvfile:
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
 #print(refs)
 #print(len(refs))

 # Special handling for pin headers
 # Make sure they're all in the BOM, but require them to not be in the PnP file
 headers = ['P1', 'P5', 'P6', 'P7', 'P12', 'P13']
 for h in headers:
   if not h in refs:
     print('%s not found in BOM' % h)
     sys.exit(1)
   refs.remove(h)

 pnprefs = set()
 pnplines = []
 modified = False
 with open('fab/%s/gerber/cpu4-all.pos' % rev, 'r') as pnpfile:
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
  with open('fab/%s/cpu4-all.pos' % rev, 'w') as pnpfile:
    pnpfile.write(''.join(pnplines))
  print('Updated PnP file')
 else:
  print('Everything looks OK')

