#!/bin/bash 

cat >> README.md <<-EOF

Graalpy
---

~~~
$(bash -x -c '~/prg/graalpy/bin/python3 --version' 2>&1)
$(bash -x -c '~/prg/graalpy/bin/python3 src/main.py' 2>&1)
~~~
EOF