import time

import cython


if cython.compiled:
    from cython.cimports.libc.stdlib import malloc, free
    from cython.cimports.libc.string import strcpy
    from cython import cast
else:
    from ctypes import CDLL, c_char_p, c_void_p, c_size_t, cast

    libc = CDLL("libc.so.6")

    def malloc(size: int) -> c_void_p:
        return libc.malloc(size)

    def free(ptr: c_void_p) -> None:
        libc.free(ptr)

ZERO: cython.int = ord("0")


def gen(seed: cython.int, slist: cython.p_char):
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
    slist: cython.p_char = cast(cython.p_char, malloc(17))

    if not slist:
        raise MemoryError("Failed to allocate memory")

    slist[8] = ord(".")

    num: cython.double = 0.0
    n: cython.int = 10000000
    seed: cython.int = 1
    s: str = ""
    try:
        for _ in range(n):
            seed = gen(seed, slist)
            s = slist[:17].decode("utf-8")
            num = float(s)
    except RuntimeError as e:
        print(f"An error occurred: {e}")
    finally:
        free(slist)
        print(f"Random numbers parsed: {n} str: {s} num: {num}")
        duration = int((time.time_ns() - start) / 1000000)
        print(f"Time: {duration} ms")
