"""
This module provides test code.

Author: Sco3
Date: 2024-04-20
"""

from collections import List
import time

alias BUFLEN: Int = 17
alias BUFHALF: Int = BUFLEN // 2



fn main() raises:
    """
    Method to measure execution time.
    """
    var start: Int = time.now()
    var num: Float64 = 0.0
    var n: Int = 10_000_000
    var seed: Int = 1
    var slist: List[UInt8] = List[UInt8]()
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
        num = Float64(s)
    # }

    print("Random numbers parsed: ", n, " str: ", s, "num: ", num)
    print("Time: ", (time.now() - start) // 1000000, " ms")
# }