#!/usr/bin/env -S nim r
# This module provides test code
# 
# Author: Sco3

import times
#import sequtils
import std/parseutils

proc gen(aseed: int, slist: var string): int =
    var seed = aseed
    for j in 0 ..< 17:
        if j != 8:
            seed = (((seed + 7) shl 4) div 11) and 0xFFFFFF
            slist[j] = chr(0x30 + (seed mod 10))
    return seed

proc main() =
    var num: float = 0.0
    var slist: string = "00000000.00000000"
    let n: int = 10000000
    var seed: int = 1
    var result: int = 0
    for _ in 0 ..< n:
        seed = gen(seed, slist)
        result = parseBiggestFloat(slist, num)
    echo ""
    echo "Random numbers parsed: ", n, " str: ", slist, " num: ", $num

let t = cpuTime()
main()
let elapsed = (cpuTime() - t) * 1000
echo "Time: ", int(elapsed), " ms"
