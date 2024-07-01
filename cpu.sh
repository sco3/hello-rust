#!/usr/bin/env -S bash

echo "-$(cat /proc/cpuinfo | grep 'model name' | sort -u | grep -ohE 'i.-.+')"