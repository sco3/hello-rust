#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

JavaScript
---

~~~
$(bash -x -c 'node src/main.js' 2>&1)
~~~
EOF