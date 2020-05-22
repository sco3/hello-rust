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

javac -d target src/Main.java 


echo ""
echo Java:
echo ""
echo ""

echo '```'


java -cp target Main 

$HOME/prg/graalvm/bin/java -cp target Main 


native-image -O3 --no-fallback --no-server  -cp target Main target/Main > /dev/null

target/Main

echo '```'