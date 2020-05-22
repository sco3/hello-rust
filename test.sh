#!/bin/bash 


echo C:
echo ""
echo ""
echo '```'

bash -x -c 'gcc -O3 src/main.c -o target/main'
echo ""
target/main

echo '```'

echo ""
echo Rust:
echo ""
echo ""

echo '```'

bash -x -c 'cargo build --release '
echo ""

target/release/hello_rust 

echo '```'
