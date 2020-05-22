Tests
---

C:
---

```
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 60900853.74552009 num: 60900853.745520
Time: 1859 ms
```

Rust:
---

```
+ cargo build --release
    Finished release [optimized] target(s) in 0.01s

Random numbers parsed: 10000000 str: 60900853.74552009 num: 60900853.74552009 
Time: 1348 ms
```

Java:
---

```
+ javac -d target src/Main.java

OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 60900853.74552009 num: 60900853.745520
Time: 3004 ms

OpenJDK 64-Bit Server VM GraalVM CE 20.1.0
Random numbers parsed: 10000000 str: 60900853.74552009 num: 60900853.745520
Time: 2321 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main

Substrate VM
Random numbers parsed: 10000000 str: 60900853.74552009 num: 60900853.745520
Time: 4293 ms
```

Javascript:
---

```
+ node src/main.js
Random numbers parsed: 10000000 str: 60900853.74552009 num: 60900853.74552009

Time: 5086
