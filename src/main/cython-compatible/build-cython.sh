#!/usr/bin/env -S bash -x 
# pip install cython 


rm -rf build
rm -f *.so

#export CC=clang

uv run python setup.py build_ext --inplace

mv *.so cython_compatible/

#--verbose


uv run python cython_compatible/main.py