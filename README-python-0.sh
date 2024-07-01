#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Python
---

~~~
$(bash -x -c 'python src/main.py' 2>&1)
~~~
EOF