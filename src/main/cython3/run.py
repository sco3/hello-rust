#!/usr/bin/env -S uv run

import timeit
import main

t = int(timeit.timeit(main.main, number=1) * 1000)
print(f"Time: {t} ms")
