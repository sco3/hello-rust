C:


```
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 15821245.15821245 num: 15821245.158212
Time: 1618 ms
```

Rust:


```
+ cargo build --release
   Compiling hello_rust v0.1.0 (/home/dz/prj/hello_rust)
    Finished release [optimized] target(s) in 0.38s

Random numbers parsed: 10000000 str: 43608343.60834360 num: 43608343.6083436 
Time: 929 ms
```
