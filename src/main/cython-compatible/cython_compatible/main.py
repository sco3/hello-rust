#!/usr/bin/env -S uv run

import gen
import os


print (os.path.basename(gen.__file__))

gen.main()
