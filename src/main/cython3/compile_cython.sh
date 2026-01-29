#!/bin/bash


uv run python setup.py build_ext --inplace
rm -f main.c
rm -rf build