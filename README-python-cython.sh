#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Cython
---

~~~
$(bash -x -c 'cd src/main/cython; uv run python3 setup.py build_ext --inplace --verbose; echo ""; uv run python3 main.py' 2>&1)
~~~
EOF