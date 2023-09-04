
Tests
===

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1924 ms
~~~

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 750 ms
~~~

Java:
---


~~~
Java HotSpot(TM) 64-Bit Server VM (build 17.0.8+9-LTS-211, mixed mode, sharing)

+ javac -d target src/Main.java

Java HotSpot(TM) 64-Bit Server VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3144 ms

OpenJDK 64-Bit Server VM GraalVM CE 17.0.7+7.1 (build 17.0.7+7-jvmci-23.0-b12, mixed mode, sharing)

OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3061 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main
Warning: Ignoring server-mode native-image argument --no-server.

Substrate VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5489 ms

~~~

JavaScript:
---


~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5657 ms

~~~

Go:
---


~~~
+ go build -o target/maingo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1841 ms

+ gccgo -O3 -o target/maingccgo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2923 ms
~~~

Free Pascal:
---

~~~
+ fpc -O3 -otarget/mainpas src/main.pas

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5277

~~~

V Lang:
---

~~~
Unsafe:

+ v src/main.v -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5929 ms

With strings.Builder

+ v -autofree src/main-builder.v -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 7029 ms
~~~


