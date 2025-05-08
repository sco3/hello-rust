#!/bin/bash 

source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Vala:
---

~~~
$(bash -x -c ' valac --pkg glib-2.0 --pkg posix -X -O3 -X -lm -o target/main-vala src/main.vala' 2>&1)

$(target/main-vala)


~~~
EOF