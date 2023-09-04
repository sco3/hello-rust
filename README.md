
Tests
===

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1865 ms
~~~

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 730 ms
~~~

Java:
---


~~~
Java HotSpot(TM) 64-Bit Server VM (build 17.0.8+9-LTS-211, mixed mode, sharing)

+ javac -d target src/Main.java

Java HotSpot(TM) 64-Bit Server VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3024 ms

OpenJDK 64-Bit Server VM GraalVM CE 17.0.7+7.1 (build 17.0.7+7-jvmci-23.0-b12, mixed mode, sharing)

OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2874 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main
Warning: Ignoring server-mode native-image argument --no-server.

Substrate VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5092 ms

~~~

JavaScript:
---


~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5500 ms

~~~

Go:
---


~~~
+ go build -o target/maingo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1776 ms

+ gccgo -O3 -o target/maingccgo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2473 ms
~~~

Free Pascal:
---

~~~
+ fpc -O3 -otarget/mainpas src/main.pas

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 4619

~~~

V Lang:
---

~~~
+ v src -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 4811 ms
~~~


