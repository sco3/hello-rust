Tests
---

C:
---

```
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 15667491.28723270 num: 15667491.287233
Time: 1858 ms
```

Rust:
---

```
+ cargo build --release
   Compiling hello_rust v0.1.0 (/home/dz/prj/hello_rust)
    Finished release [optimized] target(s) in 0.38s

Random numbers parsed: 10000000 str: 15667491.28723270 num: 15667491.2872327 
Time: 1433 ms
```

Java:
---

```
+ javac -d target src/Main.java

OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 15667491.28723270 num: 15667491.287233
Time: 2998 ms

OpenJDK 64-Bit Server VM GraalVM CE 20.1.0
Random numbers parsed: 10000000 str: 15667491.28723270 num: 15667491.287233
Time: 2328 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main

Substrate VM
Random numbers parsed: 10000000 str: 15667491.28723270 num: 15667491.287233
Time: 4318 ms
```

Javascript:
---

```
+ node src/main.js
Random numbers parsed: 10000000 str: 15667491.28723270 num: 15667491.2872327

Time: 5084
```