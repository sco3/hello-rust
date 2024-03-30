#!/bin/bash 

cat >> README.md <<-EOF

V Lang:
---

~~~
Unsafe: (byte array with tos() to string conversion)

$(bash -x -c 'v -prod src/main.v  -o target/vmain' 2>&1  )

$( target/vmain )

With strings.Builder

$(bash -x -c 'v -prod -autofree src/main-builder.v  -o target/vmain' 2>&1  )

$( target/vmain )
~~~
EOF