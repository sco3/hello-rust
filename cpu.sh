#!/usr/bin/env -S bash

#echo "-$(grep 'model name' /proc/cpuinfo | sort -u | grep -oE 'i[0-9]-.*$|' )"
echo "-$(grep 'model name' /proc/cpuinfo | sort -u | sed -E 's/^.*: (.*)$/\1/' | sed -E 's/ with Radeon Graphics//' | sed -E 's/ with Radeon Vega Graphics//' | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-//; s/-$//')"
