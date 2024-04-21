#!/bin/bash 

source ./cpu-governor.sh

cat >> README.md <<-EOF

Rust:
---


~~~
$(bash -x -c 'cargo build --release > /dev/null 2>&1' 2>&1)

$(target/release/hello_rust)
~~~
EOF