
Tests
===

C:
---


```
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1819 ms
```

Rust:
---


```
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 1162 ms
```

Java:
---


```
+ javac -d target src/Main.java

OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3041 ms

OpenJDK 64-Bit Server VM GraalVM CE 20.1.0
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2337 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main

Substrate VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 4285 ms

```

JavaScript:
---


```
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: %17.8f 46706439.74837267
Time: 5161 ms

```

Go:
---


```
+ go build -o target/maingo src/main.go

converted: 10000000 str: 46706439.74837267 num: 46706439.748373
Time: 2576 ms

+ gccgo -O3 -o target/maingccgo src/main.go

converted: 10000000 str: 46706439.74837267 num: 46706439.748373
Time: 2259 ms
```

