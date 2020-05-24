
Tests
===

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1833 ms
~~~

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 1170 ms
~~~

Java:
---


~~~
+ javac -d target src/Main.java

OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3070 ms

OpenJDK 64-Bit Server VM GraalVM CE 20.1.0
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2388 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main

Substrate VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 4361 ms

~~~

JavaScript:
---


~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5379 ms

~~~

Go:
---


~~~
+ go build -o target/maingo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2577 ms

+ gccgo -O3 -o target/maingccgo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2305 ms
~~~

Free Pascal:
---

~~~
+ fpc -otarget/mainpas src/main.pas

converted: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 4431

~~~


