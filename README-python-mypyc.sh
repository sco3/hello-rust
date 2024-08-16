#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Python mypyc
---

~~~
$(bash -x -c 'cd src/main/mypyc; mypyc main.py' 2>&1)
$(bash -x -c 'cd src/main/mypyc; python -c "import main;"' 2>&1)
~~~
EOF