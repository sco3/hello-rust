"""
This module provides test code.

Author: Sco3
Date: 2024-04-20
"""

from collections import List
import time

alias BUFLEN: Int = 17
alias BUFHALF: Int = BUFLEN // 2


fn toFloat64(inout str: String) raises -> Float64:
    var hi: Int = atol(str[0:BUFHALF])
    var lo: Int = atol(str[BUFHALF + 1 : BUFLEN])
    var result: Float64 = hi + lo * 1e-8
    return result


fn main() raises:
    """
    Method to measure execution time.
    """
    var start: Int = time.now()
    var num: Float64 = 0.0
    var n: Int = 10_000_000
    var seed: Int = 1
    var slist: List[Int8] = List[Int8]()
    var s: String = ""
    slist.resize(BUFLEN + 1, 0)
    slist[BUFHALF] = ord(".")
    for _ in range(n):  # {
        for j in range(BUFLEN):  # {
            if j != 8:  # {
                seed = (((seed + 7) << 4) // 11) & 0xFFFFFF
                slist[j] = 0x30 + (seed % 10)
            # }
        # }
        s = String(slist)
        num = toFloat64(s)
    # }

    print("Random numbers parsed: ", n, " str: ", s, "num: ", num)
    print("Time: ", (time.now() - start) // 1000000, " ms")
