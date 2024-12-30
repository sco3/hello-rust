import time
from typing import List


def main() -> None:
    start_time: float = time.perf_counter()
    num: float = 0.0
    slist: List[str] = list("00000000.00000000")
    n: int = 10000000
    seed: int = 1

    for _ in range(n):
        for j in range(17):
            if j != 8:
                seed = (((seed + 7) << 4) // 11) & 0xFFFFFF
                slist[j] = chr(0x30 + (seed % 10))
        s: str = "".join(slist)
        num = float(s)

    # End time measurement
    end_time: float = time.perf_counter()

    elapsed_time_ms: float = (end_time - start_time) * 1000
    print(f"Random numbers parsed: {n} str: {s} num: {num:17.8f}")
    print(f"Time: {elapsed_time_ms:.2f} ms")


if __name__ == "__main__":
    main()
