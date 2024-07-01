#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

C:
---

~~~
$(bash -x -c 'gcc -O3 src/main.c -o target/main' 2>&1)

$(target/main)

Fast double parser function:

$(bash -x -c 'g++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp' 2>&1)

$(target/main-fast-dp)


$(bash -x -c 'clang++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp-clang' 2>&1)

$(target/main-fast-dp-clang)


~~~
EOF