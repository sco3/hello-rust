#!/bin/bash 


# eval "echo \"$(cat README.template)\"" > README.md
# now template inside this script:

rm -rf target/*

cat > README.md <<-EOF

Tests
===

Rust:
---


~~~
$(bash -x -c 'cargo build --release > /dev/null 2>&1' 2>&1)

$(target/release/hello_rust)
~~~

Java:
---


~~~
$(java -version 2>&1| tail -n 1)

$(bash -x -c 'javac -d target src/Main.java ' 2>&1)

$(java -cp target Main)

$($HOME/prg/graalvm/bin/java -version 2>&1| tail -n 1)

$($HOME/prg/graalvm/bin/java -cp target Main)

$(bash -x -c 'native-image -O3 --no-fallback --no-server  -cp target Main target/Main > /dev/null' 2>&1)

$(target/Main)

~~~

JavaScript:
---


~~~
$(bash -x -c 'node src/main.js' 2>&1)

~~~

Go:
---


~~~
$(bash -x -c 'go build -o target/maingo src/main.go' 2>&1)

$(target/maingo)

$(bash -x -c 'gccgo -O3 -o target/maingccgo src/main.go' 2>&1)

$(target/maingccgo)
~~~

Free Pascal:
---

~~~
$(bash -x -c 'fpc -O3 -otarget/mainpas src/main.pas ' 2>&1 | grep O3    )

$( target/mainpas )

~~~

V Lang:
---

~~~
Unsafe: (byte array with tos() to string conversion)

$(bash -x -c 'v -prod src/main.v  -o target/vmain' 2>&1  )

$( target/vmain )

With strings.Builder

$(bash -x -c 'v -prod -autofree src/main-builder.v  -o target/vmain' 2>&1  )

$( target/vmain )
~~~

Julia
---


~~~
$(bash -x -c 'julia -O 3 src/main.jl' 2>&1)
~~~

EOF