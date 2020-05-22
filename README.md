
Rust:

```
$ cargo build --release
$ ./target/release/hello_world 
cnt: 10000000 str: 38138138.13813813 num: 381381381.3813813 
Time: 1165 ms
```

C:

```
$ gcc -O3 main.c -o main
$ time ./main
cnt: 10000000 str: 21245158.21245158 num: 212451582.124516

real	0m1.650s
user	0m1.647s
sys	0m0.001s

```