#!/usr/bin/env -S bash

echo "-$(grep 'model name' /proc/cpuinfo | sort -u | grep -oE 'i[0-9]-.*$' )"