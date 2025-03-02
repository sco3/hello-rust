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


Tinygo:

$(bash  -c 'PATH=~/go/bin:$PATH ; set -x ;  tinygo build -o target/main-tiny  -opt=2 src/main.go' 2>&1)

$(target/main-tiny)

Unsafe:

$(bash  -c 'PATH=~/go/bin:$PATH ; set -x ;  tinygo build -o target/main-unsafe-tiny  -opt=2 src/main-unsafe.go' 2>&1)

$(target/main-unsafe-tiny)


Gop:
$(bash  -x -c 'gop build -o target/main-gop  src/main.go' 2>&1)

$(target/main-gop)

~~~
EOF