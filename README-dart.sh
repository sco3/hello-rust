#!/bin/bash 

source ./cpu-governor.sh

cat >> README.md <<-EOF

Dart:
---

~~~
$(dart --version)

$(bash -x -c 'dart compile exe -o target/maindart src/main.dart' 2>&1)

$(target/maindart)


~~~
EOF