C:


```
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 11018178.11018178 num: 11018178.110182
Time: 1649 ms
```

Rust:


```
+ cargo build --release
    Finished release [optimized] target(s) in 0.01s

Random numbers parsed: 10000000 str: 38138138.13813813 num: 38138138.13813813 
Time: 875 ms
```
+ javac -d target src/Main.java

Java:


```
OpenJDK 64-Bit Server VM
Random numbers parsed: 10000000 str: 78080144.48354241 num: 78080144.483542
Time: 3034 ms

OpenJDK 64-Bit Server VM GraalVM CE 20.1.0
Random numbers parsed: 10000000 str: 07007007.00700700 num: 7007007.007007
Time: 1919 ms

+ native-image -O3 --no-fallback --no-server -cp target Main target/Main

Substrate VM
Random numbers parsed: 10000000 str: 20275720.27572027 num: 20275720.275720
Time: 4021 ms
```
