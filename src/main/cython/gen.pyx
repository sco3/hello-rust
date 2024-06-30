
import time

from libc.stdlib cimport malloc, free
from libc.stdio cimport printf

cdef gen(int seed , char *slist):
    """
    Generates pseudo random number
    """
    cdef int j
    for j in range(17):
        if j != 8:
            seed = (((seed + 7) << 4) // 11) & 0xFFFFFF
            slist[j] = 0x30 + (seed % 10)
        else:
            slist[j] = ord('.')

    #printf("in gen  address: %p\n", <void*>slist)
    #print ("in gen: ", slist[:17].decode())
    return seed


def main():
    """
    Method to measure execution time
    """

    start = time.time_ns()
    cdef char *slist = <char *>malloc(18)

    cdef double num = 0.0
    slist[17] = 0
    cdef int n = 10 # 10000000
    cdef int seed = 1
    for _ in range(n):
        seed = gen(seed, slist)
        #printf("in main address: %p\n", <void*>slist)
        s = slist[:17].decode('utf-8')
        #print (f"in main as str: {s}")
        num = float (s)

    free (slist)
    print(f"Random numbers parsed: {n} str: {s} num: {num}")
    duration = int((time.time_ns()-start)/1000000)
    print(f"Time: {duration} ms")

