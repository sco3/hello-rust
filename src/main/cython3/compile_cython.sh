#!/bin/bash


uv run python setup.py build_ext --inplace
rm -rf __pycache__ .bob build main.c