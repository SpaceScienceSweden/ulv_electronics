set -e
# "-" in net names mess with ngspice. I also don't like "_" in them. sed to the rescue!
grep "^\*\|^C5 \|^C4 \|^L5 \|^L4 \|^L6 \|^C2 \|^L1 \|^L2 \|^C1 " ulv_cw_beacon.cir | sed -e "s/-//g;s/_//g" > temp.cir
ngspice -b ulv_cw_beacon_test.cir | egrep "^[0-9]+"|less > temp.txt
octave test_filter.m
#rm temp.cir temp.txt
