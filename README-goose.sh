#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Goose:
---


~~~
$(bash -x -c 'goose build src/main.goose -o target/main-goose > /dev/null 2>&1' 2>&1)

$(target/main-goose)
~~~
EOF