#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Go:
---

~~~
$(go version)

$(bash -x -c 'go build -o target/maingo src/main.go' 2>&1)

$(target/maingo)

Unsafe:

$(bash -x -c 'go build -o target/main-unsafe-go src/main-unsafe.go' 2>&1)

$(target/main-unsafe-go)


Gccgo:

$(bash -x -c 'gccgo -O3 -o target/maingccgo src/main.go' 2>&1)

$(target/maingccgo)


~~~
EOF