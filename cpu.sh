#!/usr/bin/env -S bash

echo "-$(cat /proc/cpuinfo | grep 'model name' | sort -u | grep -oE 'i[0-9]-.*$' )"