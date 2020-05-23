
Tests
===

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1835 ms
~~~

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 1165 ms
~~~

Java:
---


~~~
+ javac -d target src/Main.java

OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3062 ms

OpenJDK 64-Bit Server VM GraalVM CE 20.1.0
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2301 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main

Substrate VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 4360 ms

~~~

JavaScript:
---


~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5387 ms

~~~

Go:
---


~~~
+ go build -o target/maingo src/main.go

converted: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2570 ms

+ gccgo -O3 -o target/maingccgo src/main.go

converted: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2632 ms
~~~

Pascal:
---

~~~
+ fpc -otarget/mainpas src/main.pas
Free Pascal Compiler version 3.0.4 [2019/12/21] for x86_64
Copyright (c) 1993-2017 by Florian Klaempfl and others
Target OS: Linux for x86-64
Compiling src/main.pas
Linking target/mainpas
/usr/bin/ld: warning: target/link.res contains output sections; did you forget -T?
27 lines compiled, 0.1 sec

converted: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 4489

~~~


