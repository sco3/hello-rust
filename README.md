
Tests
===

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 751 ms
~~~

Java:
---


~~~
Java HotSpot(TM) 64-Bit Server VM (build 17.0.8+9-LTS-211, mixed mode, sharing)

+ javac -d target src/Main.java

Java HotSpot(TM) 64-Bit Server VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3131 ms

OpenJDK 64-Bit Server VM GraalVM CE 17.0.7+7.1 (build 17.0.7+7-jvmci-23.0-b12, mixed mode, sharing)

OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2831 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main
Warning: Ignoring server-mode native-image argument --no-server.

Substrate VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5485 ms

~~~

JavaScript:
---


~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5929 ms

~~~

JavaScript
---

~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3377 ms
~~~

Julia
---

~~~
+ julia -O 3 src/main.jl
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 6709 ms
~~~

Jython
---

~~~
+ java -jar lib/jython-standalone-2.7.3.jar src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 28315 ms
~~~

Python
---

~~~
+ python src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 35254 ms
~~~

V Lang:
---

~~~
Unsafe: (byte array with tos() to string conversion)

+ v -prod src/main.v -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 448 ms

With strings.Builder

+ v -prod -autofree src/main-builder.v -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1139 ms
~~~

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1585 ms
~~~

Free Pascal:
---

~~~
+ fpc -O3 -otarget/mainpas src/main.pas

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3254

~~~

Go:
---

~~~
+ go build -o target/maingo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1105 ms

+ gccgo -O3 -o target/maingccgo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1356 ms
~~~
