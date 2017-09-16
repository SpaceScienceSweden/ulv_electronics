#!/bin/bash
set -e
mkdir -p svgs
rm svgs/*
python gensvg.py
#(cd svgs/ &&  convert -density 300 10k.svg 10k.svg.png && eog 10k.svg.png )
cd svgs
for f in *.svg
do
  convert -density 300 $f $f.png
  rm $f
done
