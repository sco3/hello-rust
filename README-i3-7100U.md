   Intel(R) Core(TM) i3-7100U CPU @ 2.40GHz
===

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2260 ms

Fast double parser function:

+ g++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 664 ms


+ clang++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp-clang

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 857 ms


~~~

Dart:
---

~~~
Dart SDK version: 3.4.4 (stable) (Wed Jun 12 15:54:31 2024 +0000) on "linux_x64"

+ dart compile exe -o target/maindart src/main.dart
Generated: /home/dz/prj/hello_rust/target/maindart

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 8900 ms


~~~

Go:
---

~~~
go version go1.21.10 linux/amd64

+ go build -o target/maingo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2656 ms

Unsafe:

+ go build -o target/main-unsafe-go src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2666 ms


Gccgo:

+ gccgo -O3 -o target/maingccgo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3624 ms


Tinygo:

+ tinygo build -o target/main-tiny -opt=2 src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2343 ms

Unsafe:

+ tinygo build -o target/main-unsafe-tiny -opt=2 src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1251 ms


Gop:
+ gop build -o target/main-gop src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2075 ms

~~~

Java:
---

~~~
Java HotSpot(TM) 64-Bit Server VM (build 23.0.2+7-58, mixed mode, sharing)

+ /home/dz/prg/java-23o/bin/javac -d target src/main/java/Main.java

Java HotSpot(TM) 64-Bit Server VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3462 ms


+ /home/dz/prg/graalvm/bin/javac -d target src/main/java/Main.java

Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 23.0.2+7.1 (build 23.0.2+7-jvmci-b01, mixed mode, sharing)

Oracle GraalVM 23.0.2+7.1 Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3436 ms


Fast double parser:

+ /home/dz/prg/graalvm/bin/javac -cp 'lib/*' -d target src/main/java/MainFast.java

Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 23.0.2+7.1 (build 23.0.2+7-jvmci-b01, mixed mode, sharing)

Oracle GraalVM 23.0.2+7.1 MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1230 ms



+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp target Main target/Main

Oracle GraalVM 23.0.2+7.1 Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 4304 ms


Fast double parser (native java executable):


+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp 'target:lib/*' MainFast target/MainFast

Oracle GraalVM 23.0.2+7.1 MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1299 ms

~~~

JavaScript
---

~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 6009 ms
~~~

Julia
---

~~~
+ julia -O 3 src/main.jl
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 10486 ms
~~~

Mojo:
---

~~~
+ mojo build src/main/mojo/main.mojo -o target/main-mojo
mojo: /lib64/libtinfo.so.6: no version information available (required by mojo)

+ target/main-mojo
Random numbers parsed:  10000000  str:  46706439.74837267 num:  1.0
Time:  1652  ms

Unsafe:

+ mojo build src/main/mojo/main-u.mojo -o target/main-u-mojo
mojo: /lib64/libtinfo.so.6: no version information available (required by mojo)

+ target/main-u-mojo
Random numbers parsed:  10000000  str:  46706439.74837267 num:  1.0
Time:  1156  ms
~~~

Nim:
---

~~~

+ nim c -d:release -o:../../../target/main-nim main.nim


Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1415 ms
~~~

Free Pascal:
---

~~~
+ fpc -O3 -otarget/mainpas src/main.pas

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5917

~~~

Python
---

~~~
+ python src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 54802 ms
~~~

Cython
---

~~~
+ cd src/main/cython
+ uv run python3 setup.py build_ext --inplace --verbose
running build_ext
copying build/lib.linux-x86_64-cpython-312/gen.cpython-312-x86_64-linux-gnu.so -> 
+ echo ''

+ uv run python3 main.py
gen.cpython-312-x86_64-linux-gnu.so

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 10342 ms
~~~

Graalpy
---

~~~
+ /home/dz/prg/graalpy/bin/python3 --version
GraalPy 3.10.13 (GraalVM CE Native 24.0.1)
+ /home/dz/prg/graalpy/bin/python3 src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 14840 ms
~~~

Jython
---

~~~
+ java -version
java version "23.0.2" 2025-01-21
Java(TM) SE Runtime Environment Oracle GraalVM 23.0.2+7.1 (build 23.0.2+7-jvmci-b01)
Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 23.0.2+7.1 (build 23.0.2+7-jvmci-b01, mixed mode, sharing)
+ java -jar lib/jython-standalone-2.7.3.jar src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 63082 ms
~~~

Python mypyc
---

~~~
+ cd src/main/mypyc
+ uv run mypyc main.py
running build_ext
copying build/lib.linux-x86_64-cpython-312/main.cpython-312-x86_64-linux-gnu.so -> 
+ cd src/main/mypyc
+ uv run python -c 'import main;'

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 19630 ms
~~~

PyPy
---

~~~
+ pypy src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 7169 ms
~~~

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 897 ms
~~~

V Lang:
---

~~~
Unsafe: (byte array with tos() to string conversion)

+ v -prod src/main/v/main.v -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 785 ms

With strings.Builder

+ v -prod src/main/v/main-builder.v -o target/vmainb

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1874 ms
~~~

Zig:
---

~~~

+ cd target
+ zig build-exe -O ReleaseFast ../src/mainzig.zig

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 694 ms
~~~
