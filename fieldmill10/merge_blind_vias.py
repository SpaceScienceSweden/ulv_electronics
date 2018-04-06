# Emits a sed program that merges all blind vias
# Due to some quirks of KiCAD 4.0.5, the way to extend blind vias
# is to place more blind vias on top of them.
# To extend a via that was In1.Cu/In3.Cu to In1.Cu/B.Cu
# one can place a second blind In3.Cu/B.Cu via on top of the first.
# This script merges such blind vias.
import re
import sys

# via dict
vd = {}

name2layer = {
'F.Cu': 0,
'In1.Cu': 1,
'In2.Cu': 2,
'In3.Cu': 3,
'In4.Cu': 4,
'B.Cu': 5,
}

layer2name = [0]*6
for k,v in name2layer.items():
  layer2name[v] = k

with open(sys.argv[1], 'r') as f:
  for l in f.readlines():
    if 'via blind' in l:
      pos = re.search('\\(at ([0-9\\.\\s]+)\\)', l).group(1)
      sz = re.search('\\(size ([0-9\\.]+)\\)', l).group(1)
      dr = re.search('\\(drill ([0-9\\.]+)\\)', l).group(1)
      net =re.search('\\(net ([0-9]+)\\)', l).group(1)

      # Make sure position, size, drill and net all match
      key = '%s %s %s %s' % (pos, sz, dr, net)
      if not key in vd:
        vd[key] = [l.strip()]
      else:
        vd[key].append(l.strip())

for k,v in vd.items():
  if len(v) > 1:
    layers = [False]*6
    firstmatch = None

    # Fill in "layers"
    for vv in v:
      m = re.search('\\(layers ([^\s]+) ([^\s]+)\\)', vv)
      if firstmatch is None:
        firstmatch = m
      # Get layer indices, sort
      l1 = name2layer[m.group(1)]
      l2 = name2layer[m.group(2)]
      if l1 > l2:
        LL = l1
        l1 = l2
        l2 = LL
      for i in range(l1,l2+1):
        layers[i] = True  

    # Build range [l1,l2)
    l1 = None
    l2 = None
    for i in range(6):
      if l1 is None:
        if layers[i]:
          l1 = i
      elif not layers[i]:
        l2 = i
        break
    if l2 is None:
      l2 = 6

    # Check that there are no layers after l2-1
    for i in range(l2,6):
      if layers[i]:
        print('%s not contiguous' % str(layers))
        sys.exit(1)

    # Do the replacinating
    new_via = re.sub('\\(layers [^\\)]+\\)', '(layers %s %s)' % (layer2name[l1], layer2name[l2-1]), v[0])
    print('s/%s/%s/' % (v[0], new_via))

    # Delete other vias
    for vv in v[1:]:
      print('/%s/d' % vv)

