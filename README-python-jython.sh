#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Jython
---

~~~
$(bash -x -c 'java -jar lib/jython-standalone-2.7.3.jar src/main.jpy' 2>&1)
~~~
EOF