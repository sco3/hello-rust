Tests
---

C:
---

```
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 81909987.52796516 num: 81909987.527965
Time: 1663 ms
```

Rust:
---

```
+ cargo build --release
    Finished release [optimized] target(s) in 0.01s

Random numbers parsed: 10000000 str: 81909987.52796516 num: 81909987.52796516 
Time: 1222 ms
```

Java:
---

```
+ javac -d target src/Main.java

OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 81909987.52796516 num: 81909987.527965
Time: 3065 ms

OpenJDK 64-Bit Server VM GraalVM CE 20.1.0
Random numbers parsed: 10000000 str: 81909987.52796516 num: 81909987.527965
Time: 2317 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main

Substrate VM
Random numbers parsed: 10000000 str: 81909987.52796516 num: 81909987.527965
Time: 4385 ms
```

Javascript:
---

```
+ node src/main.js
Random numbers parsed: 10000000 str: 81909987.52796516 num: 81909987.52796516

Time: 5115
```
