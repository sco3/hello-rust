#!/bin/bash 

source ./cpu-governor.sh

cat >> README.md <<-EOF

Cython
---

~~~
$(bash -x -c 'cd src/main/cython; python setup.py build_ext --inplace --verbose; python main.py' 2>&1)
~~~
EOF