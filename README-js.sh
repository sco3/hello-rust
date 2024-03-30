#!/bin/bash 

cat >> README.md <<-EOF

JavaScript
---

~~~
$(bash -x -c 'node src/main.js' 2>&1)
~~~
EOF