#!/bin/bash 

cat >> README.md <<-EOF

Jython
---

~~~
$(bash -x -c 'java -jar lib/jython-standalone-2.7.3.jar src/main.py' 2>&1)
~~~
EOF