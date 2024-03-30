#!/bin/bash 

cat >> README.md <<-EOF

C:
---

~~~
$(bash -x -c 'gcc -O3 src/main.c -o target/main' 2>&1)

$(target/main)
~~~
EOF