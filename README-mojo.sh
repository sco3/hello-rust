#!/bin/bash 

source ./cpu-governor.sh

cat >> README.md <<-EOF

Mojo:
---

~~~
$(bash -x -c 'mojo build src/main.mojo -o target/main-mojo' 2>&1)

$(bash -x -c 'target/main-mojo' 2>&1)

Unsafe:

$(bash -x -c 'mojo build src/main-u.mojo -o target/main-u-mojo' 2>&1)

$(bash -x -c 'target/main-u-mojo' 2>&1)
~~~
EOF