#!/usr/bin/env -S bash

echo "-$(cat /proc/cpuinfo | grep 'model name' | sort -u | grep -ohE 'i[0-9]-[0-9]{4}[A-Za-z]')"