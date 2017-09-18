#!/bin/bash
set -e
mkdir -p svgs
rm -f svgs/*
python gensvg.py
#(cd svgs/ &&  convert -density 300 C10u.svg C10u.svg.png && eog C10u.svg.png )
#cd svgs
#for f in *.svg
#do
#  convert -density 300 $f $f.png
#  rm $f
#done
