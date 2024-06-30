   Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz
===

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2104 ms

Fast double parser function:

+ g++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 565 ms


+ clang++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp-clang

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 754 ms


~~~

Dart:
---

~~~
Dart SDK version: 3.4.3 (stable) (Tue Jun 4 19:51:39 2024 +0000) on "linux_x64"

+ dart compile exe -o target/maindart src/main.dart
Generated: /home/dz/prj/hello_rust/target/maindart

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 9206 ms


~~~

Go:
---

~~~
go version go1.21.10 linux/amd64

+ go build -o target/maingo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1807 ms

Unsafe:

+ go build -o target/main-unsafe-go src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1716 ms


Gccgo:

+ gccgo -O3 -o target/maingccgo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3197 ms


Tinygo:

+ tinygo build -o target/main-tiny -opt=2 src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2492 ms

Unsafe:

+ tinygo build -o target/main-unsafe-tiny -opt=2 src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1367 ms


Gop:
+ gop build -o target/main-gop src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1819 ms

~~~

Java:
---

~~~
Java HotSpot(TM) 64-Bit Server VM (build 21.0.3+7-LTS-152, mixed mode, sharing)

+ /home/dz/prg/java-21o/bin/javac -d target src/main/java/Main.java

Java HotSpot(TM) 64-Bit Server VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3223 ms


+ /home/dz/prg/graalvm/bin/javac -d target src/main/java/Main.java

OpenJDK 64-Bit Server VM GraalVM CE 21.0.2+13.1 (build 21.0.2+13-jvmci-23.1-b30, mixed mode, sharing)

OpenJDK 64-Bit Server VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3033 ms


Fast double parser:

+ /home/dz/prg/graalvm/bin/javac -cp 'lib/*' -d target src/main/java/MainFast.java

OpenJDK 64-Bit Server VM GraalVM CE 21.0.2+13.1 (build 21.0.2+13-jvmci-23.1-b30, mixed mode, sharing)

OpenJDK 64-Bit Server VM MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1302 ms



+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp target Main target/Main

Substrate VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 6170 ms


Fast double parser (native java executable):


+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp 'target:lib/*' MainFast target/MainFast

Substrate VM MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1380 ms

~~~

JavaScript
---

~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5792 ms
~~~

Julia
---

~~~
+ julia -O 3 src/main.jl
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 10031 ms
~~~

Mojo:
---

~~~
+ mojo build src/main/mojo/main.mojo -o target/main-mojo
mojo: /lib64/libtinfo.so.6: no version information available (required by mojo)

+ target/main-mojo
Random numbers parsed:  10000000  str:  46706439.74837267 num:  1.0
Time:  1602  ms

Unsafe:

+ mojo build src/main/mojo/main-u.mojo -o target/main-u-mojo
mojo: /lib64/libtinfo.so.6: no version information available (required by mojo)

+ target/main-u-mojo
Random numbers parsed:  10000000  str:  46706439.74837267 num:  1.0
Time:  1010  ms
~~~

Free Pascal:
---

~~~
+ fpc -O3 -otarget/mainpas src/main.pas

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 5210

~~~

Python
---

~~~
+ python src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 48589 ms
~~~

Graalpy
---

~~~
+ /home/dz/prg/graalpy/bin/python3 --version
GraalPy 3.10.13 (GraalVM CE Native 24.0.1)
+ /home/dz/prg/graalpy/bin/python3 src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 13816 ms
~~~

Jython
---

~~~
+ java -jar lib/jython-standalone-2.7.3.jar src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 65689 ms
~~~

PyPy
---

~~~
+ pypy src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 6871 ms
~~~

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 814 ms
~~~

V Lang:
---

~~~
Unsafe: (byte array with tos() to string conversion)

+ v -prod src/main/v/main.v -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 703 ms

With strings.Builder

+ v -prod -autofree src/main/v/main-builder.v -o target/vmainb

Random numbers parsed: 10000000 str: 4670643974837267 num: 4670643974837267.00000000
Time: 1687 ms
~~~
