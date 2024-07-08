   13th Gen Intel(R) Core(TM) i7-1360P
===

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 677 ms

Fast double parser function:

+ g++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 264 ms


+ clang++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp-clang

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 377 ms


~~~

Dart:
---

~~~
Dart SDK version: 3.4.1 (stable) (Tue May 21 15:46:25 2024 +0000) on "linux_x64"

+ dart compile exe -o target/maindart src/main.dart
Generated: /home/dz/prj/hello_rust/target/maindart

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2852 ms


~~~

Go:
---

~~~
go version go1.21.10 linux/amd64

+ go build -o target/maingo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 783 ms

Unsafe:

+ go build -o target/main-unsafe-go src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 685 ms


Gccgo:

+ gccgo -O3 -o target/maingccgo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1004 ms


Tinygo:

+ tinygo build -o target/main-tiny -opt=2 src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 971 ms

Unsafe:

+ tinygo build -o target/main-unsafe-tiny -opt=2 src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 511 ms


Gop:
+ gop build -o target/main-gop src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 769 ms

~~~

Java:
---

~~~
OpenJDK 64-Bit Server VM GraalVM CE 21.0.2+13.1 (build 21.0.2+13-jvmci-23.1-b30, mixed mode, sharing)

+ /home/dz/prg/java-21o/bin/javac -d target src/main/java/Main.java

OpenJDK 64-Bit Server VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1072 ms


+ /home/dz/prg/graalvm/bin/javac -d target src/main/java/Main.java

OpenJDK 64-Bit Server VM GraalVM CE 21.0.2+13.1 (build 21.0.2+13-jvmci-23.1-b30, mixed mode, sharing)

OpenJDK 64-Bit Server VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1059 ms


Fast double parser:

+ /home/dz/prg/graalvm/bin/javac -cp 'lib/*' -d target src/main/java/MainFast.java

OpenJDK 64-Bit Server VM GraalVM CE 21.0.2+13.1 (build 21.0.2+13-jvmci-23.1-b30, mixed mode, sharing)

OpenJDK 64-Bit Server VM MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 469 ms



+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp target Main target/Main

Substrate VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2233 ms


Fast double parser (native java executable):


+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp 'target:lib/*' MainFast target/MainFast

Substrate VM MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 503 ms

~~~

JavaScript
---

~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2146 ms
~~~

Julia
---

~~~
+ julia -O 3 src/main.jl
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3380 ms
~~~

Mojo:
---

~~~
+ mojo build src/main/mojo/main.mojo -o target/main-mojo
mojo: /lib64/libtinfo.so.6: no version information available (required by mojo)

+ target/main-mojo
Random numbers parsed:  10000000  str:  46706439.74837267 num:  1.0
Time:  664  ms

Unsafe:

+ mojo build src/main/mojo/main-u.mojo -o target/main-u-mojo
mojo: /lib64/libtinfo.so.6: no version information available (required by mojo)

+ target/main-u-mojo
Random numbers parsed:  10000000  str:  46706439.74837267 num:  1.0
Time:  588  ms
~~~

C:
---

~~~
+ nim c -o:target/main-nim -d:release --verbosity:0 src/main/nim/main.nim


Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 490 ms

~~~

Free Pascal:
---

~~~
+ fpc -O3 -otarget/mainpas src/main.pas

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1795

~~~

Python
---

~~~
+ python src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 15666 ms
~~~

Cython
---

~~~
+ cd src/main/cython
+ python3.12 setup.py build_ext --inplace --verbose
Compiling gen.pyx because it changed.
[1/1] Cythonizing gen.pyx
running build_ext
building 'gen' extension
creating build/temp.linux-x86_64-cpython-312
creating build/temp.linux-x86_64-cpython-312/build
gcc -fno-strict-overflow -Wsign-compare -DDYNAMIC_ANNOTATIONS_ENABLED=1 -DNDEBUG -fcf-protection -fexceptions -fcf-protection -fexceptions -fcf-protection -fexceptions -fPIC -I/usr/include/python3.12 -c build/gen.c -o build/temp.linux-x86_64-cpython-312/build/gen.o -O3
creating build/lib.linux-x86_64-cpython-312
gcc -shared build/temp.linux-x86_64-cpython-312/build/gen.o -L/usr/lib64 -o build/lib.linux-x86_64-cpython-312/gen.cpython-312-x86_64-linux-gnu.so
copying build/lib.linux-x86_64-cpython-312/gen.cpython-312-x86_64-linux-gnu.so -> 
+ python3.12 main.py
gen.cpython-312-x86_64-linux-gnu.so
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3330 ms
~~~

Graalpy
---

~~~
+ /home/dz/prg/graalpy/bin/python3 --version
GraalPy 3.10.13 (GraalVM CE Native 24.0.1)
+ /home/dz/prg/graalpy/bin/python3 src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 6255 ms
~~~

Jython
---

~~~
+ java -jar lib/jython-standalone-2.7.3.jar src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 26434 ms
~~~

PyPy
---

~~~
+ pypy src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2115 ms
~~~

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 397 ms
~~~

V Lang:
---

~~~
Unsafe: (byte array with tos() to string conversion)

+ v -prod src/main/v/main.v -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 340 ms

With strings.Builder

+ v -prod -autofree src/main/v/main-builder.v -o target/vmainb

Random numbers parsed: 10000000 str: 4670643974837267 num: 4670643974837267.00000000
Time: 573 ms
~~~
