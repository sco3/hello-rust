#!/bin/bash 


# eval "echo \"$(cat README.template)\"" > README.md
# now template inside this script:

rm -f target/*

cat > README.md <<-EOF

Tests
===

C:
---

~~~
$(bash -x -c 'gcc -O3 src/main.c -o target/main' 2>&1)

$(target/main)
~~~

Rust:
---


~~~
$(bash -x -c 'cargo build --release > /dev/null 2>&1' 2>&1)

$(target/release/hello_rust)
~~~

Java:
---


~~~
$(bash -x -c 'javac -d target src/Main.java ' 2>&1)

$(java -cp target Main)

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
$(bash -x -c 'fpc -O3 -otarget/mainpas src/main.pas '  2> /dev/null   )

$( target/mainpas )

~~~


EOF