#!/bin/bash 

source ./cpu-governor.sh

cat >> README.md <<-EOF

Go:
---

~~~
$(bash -x -c 'go build -o target/maingo src/main.go' 2>&1)

$(target/maingo)

$(bash -x -c 'gccgo -O3 -o target/maingccgo src/main.go' 2>&1)

$(target/maingccgo)
~~~
EOF