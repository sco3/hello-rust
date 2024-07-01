#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

PyPy
---

~~~
$(bash -x -c 'pypy src/main.jpy' 2>&1)
~~~
EOF