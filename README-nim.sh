#!/bin/bash 

source ./cpu-governor.sh

mkdir -p target

cat >> "README$(./cpu.sh).md" <<-EOF

Nim:
---

~~~

$(bash -x -c 'cd src/main/nim ; nim c -d:release  -o:../../../target/main-nim main.nim ' 2>&1 | grep release | grep -v Hint    )

$( target/main-nim )
~~~
EOF