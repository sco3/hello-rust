#!/bin/bash 

cat >> README.md <<-EOF

Mojo:
---

~~~
$(bash -x -c 'mojo build src/main.mojo -o target/main-mojo' 2>&1)
$(bash -x -c 'target/main-mojo' 2>&1)
~~~
EOF