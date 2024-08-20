   Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz
===

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1985 ms

Fast double parser function:

+ g++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 556 ms


+ clang++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp-clang

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 743 ms


~~~

Dart:
---

~~~
Dart SDK version: 3.4.3 (stable) (Tue Jun 4 19:51:39 2024 +0000) on "linux_x64"

+ dart compile exe -o target/maindart src/main.dart
Generated: /home/dz/prj/hello_rust/target/maindart

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 8526 ms


~~~

Go:
---

~~~
go version go1.21.10 linux/amd64

+ go build -o target/maingo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1721 ms

Unsafe:

+ go build -o target/main-unsafe-go src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1673 ms


Gccgo:

+ gccgo -O3 -o target/maingccgo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2642 ms


Tinygo:

+ tinygo build -o target/main-tiny -opt=2 src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2359 ms

Unsafe:

+ tinygo build -o target/main-unsafe-tiny -opt=2 src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1362 ms


Gop:
+ gop build -o target/main-gop src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1723 ms

~~~

Java:
---

~~~
Java HotSpot(TM) 64-Bit Server VM (build 21.0.3+7-LTS-152, mixed mode, sharing)

+ /home/dz/prg/java-21o/bin/javac -d target src/main/java/Main.java

Java HotSpot(TM) 64-Bit Server VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3270 ms


+ /home/dz/prg/graalvm/bin/javac -d target src/main/java/Main.java

OpenJDK 64-Bit Server VM GraalVM CE 21.0.2+13.1 (build 21.0.2+13-jvmci-23.1-b30, mixed mode, sharing)

OpenJDK 64-Bit Server VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2945 ms


Fast double parser:

+ /home/dz/prg/graalvm/bin/javac -cp 'lib/*' -d target src/main/java/MainFast.java

OpenJDK 64-Bit Server VM GraalVM CE 21.0.2+13.1 (build 21.0.2+13-jvmci-23.1-b30, mixed mode, sharing)

OpenJDK 64-Bit Server VM MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1231 ms



+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp target Main target/Main

Substrate VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5906 ms


Fast double parser (native java executable):


+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp 'target:lib/*' MainFast target/MainFast

Substrate VM MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1325 ms

~~~

JavaScript
---

~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5664 ms
~~~

Julia
---

~~~
+ julia -O 3 src/main.jl
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 9362 ms
~~~

Mojo:
---

~~~
+ mojo build src/main/mojo/main.mojo -o target/main-mojo
mojo: /lib64/libtinfo.so.6: no version information available (required by mojo)

+ target/main-mojo
Random numbers parsed:  10000000  str:  46706439.74837267 num:  1.0
Time:  1450  ms

Unsafe:

+ mojo build src/main/mojo/main-u.mojo -o target/main-u-mojo
mojo: /lib64/libtinfo.so.6: no version information available (required by mojo)

+ target/main-u-mojo
Random numbers parsed:  10000000  str:  46706439.74837267 num:  1.0
Time:  991  ms
~~~

Free Pascal:
---

~~~
+ fpc -O3 -otarget/mainpas src/main.pas

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5002

~~~

Python
---

~~~
+ python src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 57051 ms
~~~

Cython
---

~~~
+ cd src/main/cython
+ python setup.py build_ext --inplace --verbose
running build_ext
+ python main.py
gen.cpython-312-x86_64-linux-gnu.so
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 4232 ms
~~~

Graalpy
---

~~~
+ /home/dz/prg/graalpy/bin/python3 --version
GraalPy 3.10.13 (GraalVM CE Native 24.0.1)
+ /home/dz/prg/graalpy/bin/python3 src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 12448 ms
~~~

Jython
---

~~~
+ java -jar lib/jython-standalone-2.7.3.jar src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 62230 ms
~~~

PyPy
---

~~~
+ pypy src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 6304 ms
~~~

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 857 ms
~~~

V Lang:
---

~~~
Unsafe: (byte array with tos() to string conversion)

+ v -prod src/main/v/main.v -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 682 ms

With strings.Builder

+ v -prod -autofree src/main/v/main-builder.v -o target/vmainb

Random numbers parsed: 10000000 str: 4670643974837267 num: 4670643974837267.00000000
Time: 1524 ms
~~~

Zig:
---

~~~

+ cd target
+ zig build-exe -O ReleaseFast ../src/mainzig.zig

Random numbers parsed: 10000000 str: 46706439.74837267 num: 4.670643974837267e7
Time: 607 ms
~~~
