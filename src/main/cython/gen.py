
import time


def gen(seed, slist):
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

    start = time.time_ns()
    num = 0.0
    slist = list("00000000.00000000")
    n = 10000000
    seed = 1
    for _ in range(n):
        seed = gen(seed, slist)
        s = "".join(slist)
        num = float(s)
    print("")
    print("Random numbers parsed: %d str: %s num: %17.8f" % (n, s, num))
    duration = (time.time_ns()-start)/1000000
    print (f"Time: {duration} ms")

