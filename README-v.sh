#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

V Lang:
---

~~~
Unsafe: (byte array with tos() to string conversion)

$(bash -x -c 'v -prod src/main/v/main.v  -o target/vmain' 2>&1  )

$( target/vmain )

With strings.Builder

$(bash -x -c 'v -prod src/main/v/main-builder.v  -o target/vmainb' 2>&1  )

$( target/vmainb )
~~~
EOF