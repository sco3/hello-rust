#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Cython
---

~~~
$(bash -x -c 'cd src/main/cython; python3.12 setup.py build_ext --inplace --verbose; python3.12 main.py' 2>&1)
~~~
EOF