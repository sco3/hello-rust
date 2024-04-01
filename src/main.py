"""
This module provides test code

Author: Sco3
Date: 2024-04-01
"""

import timeit


def gen(seed: int, slist: list[str]) -> int:
    """
    Generates pseudo random number
    """
    for j in range(17):
        if j != 8:
            seed = (((seed + 7) << 4) // 11) & 0xFFFFFF
            slist[j] = chr(0x30 + (seed % 10))
    return seed


def main():
    """
    Method to measure execution time
    """

    num: float = 0.0
    slist: list[str] = list("00000000.00000000")
    n: int = 10000000
    seed: int = 1
    for _ in range(n):
        seed = gen(seed, slist)
        s: str = "".join(slist)
        num = float(s)
    print("")
    print(f"Random numbers parsed: {n} str: {s} num: {num:17.8f}")


t = int(timeit.timeit(main, number=1) * 1000)
print(f"Time: {t} ms")
