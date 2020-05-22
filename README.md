Tests
---

C:
---

```
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.748373
Time: 1824 ms
```

Rust:
---

```
+ cargo build --release
   Compiling hello_rust v0.1.0 (/home/dz/prj/hello_rust)
    Finished release [optimized] target(s) in 0.52s

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 1176 ms
```

Java:
---

```
+ javac -d target src/Main.java

OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.748373
Time: 3058 ms

OpenJDK 64-Bit Server VM GraalVM CE 20.1.0
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.748373
Time: 2355 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main

Substrate VM
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.748373
Time: 4299 ms
```

JavaScript:
---

```
+ node src/main.js
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267

Time: 5076
