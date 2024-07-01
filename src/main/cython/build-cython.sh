#!/usr/bin/env -S bash -x 
# pip install cython 


rm -rf build
rm -f *.so

#export CC=clang

python3.12 setup.py build_ext --inplace

#--verbose


python3.12 main.py