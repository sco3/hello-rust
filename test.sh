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



echo ""
echo Java:
echo ""
echo ""

echo '```'

bash -x -c 'javac -d target src/Main.java '
echo ""
java -cp target Main
echo ""

$HOME/prg/graalvm/bin/java -cp target Main 
echo ""

bash -x -c 'native-image -O3 --no-fallback --no-server  -cp target Main target/Main > /dev/null'
echo ""
target/Main



echo ""
echo Javascript:
echo ""
echo ""

echo '```'

bash -x -c 'node src/main.js'


echo '```'
