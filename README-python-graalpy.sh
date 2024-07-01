#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Graalpy
---

~~~
$(bash -x -c '~/prg/graalpy/bin/python3 --version' 2>&1)
$(bash -x -c '~/prg/graalpy/bin/python3 src/main.py' 2>&1)
~~~
EOF