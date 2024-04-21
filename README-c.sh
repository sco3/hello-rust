#!/bin/bash 

cat >> README.md <<-EOF

C:
---

~~~
$(bash -x -c 'gcc -O3 src/main.c -o target/main' 2>&1)

$(target/main)

Fast double parser function:

$(bash -x -c 'g++ -O3 src/main-fast-dp.c -o target/main-fast-dp' 2>&1)

$(target/main-fast-dp)


~~~
EOF