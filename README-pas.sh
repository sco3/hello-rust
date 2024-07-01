#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Free Pascal:
---

~~~
$(bash -x -c 'fpc -O3 -otarget/mainpas src/main.pas ' 2>&1 | grep O3    )

$( target/mainpas )

~~~
EOF