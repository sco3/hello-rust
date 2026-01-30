#!/usr/bin/env -S bash -x 

uv run python setup.py build_ext --inplace

rm -rf build 

