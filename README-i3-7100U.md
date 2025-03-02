
Java:
---

~~~
Java HotSpot(TM) 64-Bit Server VM (build 23.0.2+7-58, mixed mode, sharing)

+ /home/dz/prg/java-23o/bin/javac -d target src/main/java/Main.java

Java HotSpot(TM) 64-Bit Server VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3453 ms


+ /home/dz/prg/graalvm/bin/javac -d target src/main/java/Main.java

Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 23.0.2+7.1 (build 23.0.2+7-jvmci-b01, mixed mode, sharing)

Oracle GraalVM 23.0.2+7.1 Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3331 ms


Fast double parser:

+ /home/dz/prg/graalvm/bin/javac -cp 'lib/*' -d target src/main/java/MainFast.java

Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 23.0.2+7.1 (build 23.0.2+7-jvmci-b01, mixed mode, sharing)

Oracle GraalVM 23.0.2+7.1 MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1096 ms



+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp target Main target/Main

Oracle GraalVM 23.0.2+7.1 Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3992 ms


Fast double parser (native java executable):


+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp 'target:lib/*' MainFast target/MainFast

Oracle GraalVM 23.0.2+7.1 MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1215 ms

~~~

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2231 ms

Fast double parser function:

+ g++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 650 ms


+ clang++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp-clang

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 846 ms


~~~

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 862 ms
~~~

Python
---

~~~
+ python src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 52684 ms
~~~

Nim:
---

~~~

+ nim c -d:release -o:../../../target/main-nim main.nim


Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1323 ms
~~~


Zig:
---

~~~

+ cd target
+ zig build-exe -O ReleaseFast ../src/mainzig.zig

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 671 ms
~~~


Go:
---

~~~
go version go1.21.10 linux/amd64

+ go build -o target/maingo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1959 ms

Unsafe:

+ go build -o target/main-unsafe-go src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1915 ms


Gccgo:

+ gccgo -O3 -o target/maingccgo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2517 ms


Tinygo:

+ tinygo build -o target/main-tiny -opt=2 src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2310 ms

Unsafe:

+ tinygo build -o target/main-unsafe-tiny -opt=2 src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1214 ms


Gop:
+ gop build -o target/main-gop src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2025 ms

~~~

Mojo:
---

~~~
+ mojo build src/main/mojo/main.mojo -o target/main-mojo
mojo: /lib64/libtinfo.so.6: no version information available (required by mojo)

+ target/main-mojo
Random numbers parsed:  10000000  str:  46706439.74837267 num:  1.0
Time:  1648  ms

Unsafe:

+ mojo build src/main/mojo/main-u.mojo -o target/main-u-mojo
mojo: /lib64/libtinfo.so.6: no version information available (required by mojo)

+ target/main-u-mojo
Random numbers parsed:  10000000  str:  46706439.74837267 num:  1.0
Time:  1155  ms
~~~

Julia
---

~~~
+ julia -O 3 src/main.jl
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 10160 ms
~~~


V Lang:
---

~~~
Unsafe: (byte array with tos() to string conversion)

+ v -prod src/main/v/main.v -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 789 ms

With strings.Builder

+ v -prod src/main/v/main-builder.v -o target/vmainb

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1794 ms
~~~

Dart:
---

~~~
Dart SDK version: 3.4.4 (stable) (Wed Jun 12 15:54:31 2024 +0000) on "linux_x64"

+ dart compile exe -o target/maindart src/main.dart
Generated: /home/dz/prj/hello_rust/target/maindart

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 8628 ms


~~~

Free Pascal:
---

~~~
+ fpc -O3 -otarget/mainpas src/main.pas

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5632

~~~


Graalpy
---

~~~
+ /home/dz/prg/graalpy/bin/python3 --version
GraalPy 3.10.13 (GraalVM CE Native 24.0.1)
+ /home/dz/prg/graalpy/bin/python3 src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 14104 ms
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
Time: 9841 ms
~~~

PyPy
---

~~~
+ pypy src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 6454 ms
~~~


Python mypyc
---

~~~
+ cd src/main/mypyc
+ uv run mypyc main.py
running build_ext
building 'main' extension
creating build/temp.linux-x86_64-cpython-313/build
gcc -fno-strict-overflow -Wsign-compare -DDYNAMIC_ANNOTATIONS_ENABLED=1 -DNDEBUG -fcf-protection -fexceptions -fcf-protection -fexceptions -fcf-protection -fexceptions -O3 -fPIC -I/home/dz/prj/hello_rust/src/main/mypyc/.venv/lib64/python3.13/site-packages/mypyc/lib-rt -I/home/dz/prj/hello_rust/src/main/mypyc/.venv/include -I/usr/include/python3.13 -c build/__native.c -o build/temp.linux-x86_64-cpython-313/build/__native.o -O3 -g1 -Werror -Wno-unused-function -Wno-unused-label -Wno-unreachable-code -Wno-unused-variable -Wno-unused-command-line-argument -Wno-unknown-warning-option -Wno-unused-but-set-variable -Wno-ignored-optimization-argument -Wno-cpp
creating build/lib.linux-x86_64-cpython-313
gcc -shared build/temp.linux-x86_64-cpython-313/build/__native.o -L/usr/lib64 -o build/lib.linux-x86_64-cpython-313/main.cpython-313-x86_64-linux-gnu.so
copying build/lib.linux-x86_64-cpython-313/main.cpython-313-x86_64-linux-gnu.so -> 
+ cd src/main/mypyc
+ uv run python -c 'import main;'

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 16827 ms
~~~

Python mypyc
---

~~~
+ cd src/main/mypyc
+ uv run mypyc main.py
running build_ext
building 'main' extension
creating build/temp.linux-x86_64-cpython-312/build
gcc -fno-strict-overflow -Wsign-compare -DDYNAMIC_ANNOTATIONS_ENABLED=1 -DNDEBUG -fexceptions -fcf-protection -fexceptions -fcf-protection -fexceptions -fcf-protection -fPIC -I/home/dz/prj/hello_rust/src/main/mypyc/.venv/lib64/python3.12/site-packages/mypyc/lib-rt -I/home/dz/prj/hello_rust/src/main/mypyc/.venv/include -I/usr/include/python3.12 -c build/__native.c -o build/temp.linux-x86_64-cpython-312/build/__native.o -O3 -g1 -Werror -Wno-unused-function -Wno-unused-label -Wno-unreachable-code -Wno-unused-variable -Wno-unused-command-line-argument -Wno-unknown-warning-option -Wno-unused-but-set-variable -Wno-ignored-optimization-argument -Wno-cpp
creating build/lib.linux-x86_64-cpython-312
gcc -shared build/temp.linux-x86_64-cpython-312/build/__native.o -L/usr/lib64 -o build/lib.linux-x86_64-cpython-312/main.cpython-312-x86_64-linux-gnu.so
copying build/lib.linux-x86_64-cpython-312/main.cpython-312-x86_64-linux-gnu.so -> 
+ cd src/main/mypyc
+ uv run python -c 'import main;'

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 19012 ms
~~~

Jython
---

~~~
+ java -jar lib/jython-standalone-2.7.3.jar src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 53085 ms
~~~

JavaScript
---

~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5366 ms
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
Time: 52966 ms
~~~
