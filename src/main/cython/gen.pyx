
import time


def gen(int seed , char *slist):
    """
    Generates pseudo random number
    """
    cdef int j
    for j in range(17):
        if j != 8:
            seed = (((seed + 7) << 4) // 11) & 0xFFFFFF
            slist[j] = 0x30 + (seed % 10)
    return seed


def main():
    """
    Method to measure execution time
    """

    start = time.time_ns()
    cdef double num = 0.0
    cdef char *slist[18]
    slist[17]='\0'
    cdef int n = 10 # 10000000
    cdef int seed = 1
    for _ in range(n):
        seed = gen(seed, slist)
        print (f"{slist}")
        num = float(slist)
    print(f"Random numbers parsed: {n} str: {slist} num: {num}")
    duration = int((time.time_ns()-start)/1000000)
    print(f"Time: {duration} ms")

