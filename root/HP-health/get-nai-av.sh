#!/bin/sh
cd /u02/nai
find . -exec touch {} \;
wget -r -N -l2 -A "sdat*.exe" http://speedownload.nai.com/Products/licensed/superdat/english/intel
#wget -m http://speedownload.nai.com/Products/
#wget -N -r -nH http://download.nai.com/products/commonupdater/
