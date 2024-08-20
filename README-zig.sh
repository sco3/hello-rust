#!/bin/bash 

source ./cpu-governor.sh

mkdir -p target

cat >> "README$(./cpu.sh).md" <<-EOF

Zig:
---

~~~

$(bash -x -c 'cd target ; zig build-exe -O ReleaseFast  ../src/mainzig.zig ' 2>&1  )

$( target/mainzig )
~~~
EOF