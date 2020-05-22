C:


```
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 14416457.80801444 num: 14416457.808014
Time: 1657 ms
```

Rust:


```
+ cargo build --release
    Finished release [optimized] target(s) in 0.01s

Random numbers parsed: 10000000 str: 43608343.60834360 num: 43608343.6083436 
Time: 916 ms
```

Java:


```
OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 45780801.44483542 num: 45780801.444835
+Time: 3011 ms
OpenJDK 64-Bit Server VM GraalVM CE 20.1.0
Random numbers parsed: 10000000 str: 80727080.72708072 num: 80727080.727081
+Time: 1913 ms
Substrate VM
Random numbers parsed: 10000000 str: 75720275.72027572 num: 75720275.720276
+Time: 4039 ms
```
