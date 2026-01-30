import time

import cython


ZERO: cython.int = ord("0")


def gen(seed: cython.int, slist: cython.uchar[:]):
    """
    Generates pseudo random number
    """
    j: cython.int = 0
    for j in range(17):
        if j != 8:
            seed = (((seed + 7) << 4) // 11) & 0xFFFFFF
            slist[j] = ZERO + (seed % 10)
    return seed


def main():
    """
    Method to measure execution time
    """

    start = time.time_ns()
    
    # Use bytearray for both compiled and non-compiled modes
    slist = bytearray(17)
    slist[8] = ord(".")

    num: cython.double = 0.0
    n: cython.int = 10000000
    seed: cython.int = 1
    s: str = ""
    try:
        for _ in range(n):
            seed = gen(seed, slist)
            s = slist.decode("utf-8")
            num = float(s)
    except RuntimeError as e:
        print(f"An error occurred: {e}")
    finally:
        print(f"Random numbers parsed: {n} str: {s} num: {num}")
