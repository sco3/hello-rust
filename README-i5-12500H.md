   12th Gen Intel(R) Core(TM) i5-12500H
===

C:
---

~~~
+ gcc -O3 src/main.c -o target/main

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 758 ms

Fast double parser function:

+ g++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 306 ms


+ clang++ -O3 src/main-fast-dp.cpp -o target/main-fast-dp-clang

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 419 ms


~~~

Dart:
---

~~~
Dart SDK version: 3.4.4 (stable) (Wed Jun 12 15:54:31 2024 +0000) on "linux_x64"

+ dart compile exe -o target/maindart src/main.dart
Generated: /home/dz/prj/hello_rust/target/maindart

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3245 ms


~~~

Go:
---

~~~
go version go1.24.2 linux/amd64

+ go build -o target/maingo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 833 ms

Unsafe:

+ go build -o target/main-unsafe-go src/main-unsafe.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 735 ms


Gccgo:

+ gccgo -O3 -o target/maingccgo src/main.go

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 971 ms


~~~

Java:
---

~~~
Java HotSpot(TM) 64-Bit Server VM (build 24.0.2+12-54, mixed mode, sharing)

+ /home/dz/prg/jdk/bin/javac -d target src/main/java/Main.java

Java HotSpot(TM) 64-Bit Server VM Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1321 ms


+ /home/dz/prg/graalvm/bin/javac -d target src/main/java/Main.java

Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 24.0.2+11.1 (build 24.0.2+11-jvmci-b01, mixed mode, sharing)

Oracle GraalVM 24.0.2+11.1 Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1215 ms


Fast double parser:

+ /home/dz/prg/graalvm/bin/javac -cp 'lib/*' -d target src/main/java/MainFast.java

Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 24.0.2+11.1 (build 24.0.2+11-jvmci-b01, mixed mode, sharing)

Oracle GraalVM 24.0.2+11.1 MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 427 ms



+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp target Main target/Main

Oracle GraalVM 24.0.2+11.1 Main
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1271 ms


Fast double parser (native java executable):


+ /home/dz/prg/graalvm/bin/native-image -O3 --no-fallback -cp 'target:lib/*' MainFast target/MainFast

Oracle GraalVM 24.0.2+11.1 MainFast
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 474 ms

~~~

JavaScript
---

~~~
+ node src/main.js

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1948 ms
~~~

Julia
---

~~~
+ julia -O 3 src/main.jl
Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3551 ms
~~~

Nim:
---

~~~

+ nim c -d:release -o:../../../target/main-nim main.nim


Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 530 ms
~~~

Free Pascal:
---

~~~
+ fpc -O3 -otarget/mainpas src/main.pas

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1876

~~~

Python
---

~~~
+ python src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 16927 ms
~~~

Cython
---

~~~
+ cd src/main/cython
+ uv run python3 setup.py build_ext --inplace --verbose
/home/dz/prj/hello_rust/src/main/cython/.venv/lib/python3.12/site-packages/setuptools/config/expand.py:128: SetuptoolsWarning: File '/home/dz/prj/hello_rust/src/main/cython/README.md' cannot be found
  for path in _filter_existing_files(_filepaths)
running build_ext
copying build/lib.linux-x86_64-cpython-312/gen.cpython-312-x86_64-linux-gnu.so -> 
+ echo ''

+ uv run python3 main.py
gen.cpython-312-x86_64-linux-gnu.so

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2846 ms
~~~

Graalpy
---

~~~
+ /home/dz/prg/graalpy/bin/python3 --version
GraalPy 3.11.7 (Oracle GraalVM Native 24.2.2)
+ /home/dz/prg/graalpy/bin/python3 src/main.py

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 3772 ms
~~~

Jython
---

~~~
+ java -version
java version "24.0.2" 2025-07-15
Java(TM) SE Runtime Environment Oracle GraalVM 24.0.2+11.1 (build 24.0.2+11-jvmci-b01)
Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 24.0.2+11.1 (build 24.0.2+11-jvmci-b01, mixed mode, sharing)
+ java -jar lib/jython-standalone-2.7.3.jar src/main.jpy
WARNING: A restricted method in java.lang.System has been called
WARNING: java.lang.System::load has been called by com.kenai.jffi.internal.StubLoader in an unnamed module (file:/home/dz/prj/hello_rust/lib/jython-standalone-2.7.3.jar)
WARNING: Use --enable-native-access=ALL-UNNAMED to avoid a warning for callers in this module
WARNING: Restricted methods will be blocked in a future release unless native access is enabled


Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 19411 ms
~~~

Python mypyc
---

~~~
+ cd src/main/mypyc
+ uv run mypyc main.py
/home/dz/prj/hello_rust/src/main/mypyc/.venv/lib/python3.12/site-packages/setuptools/config/expand.py:128: SetuptoolsWarning: File '/home/dz/prj/hello_rust/src/main/mypyc/README.md' cannot be found
  for path in _filter_existing_files(_filepaths)
running build_ext
copying build/lib.linux-x86_64-cpython-312/main.cpython-312-x86_64-linux-gnu.so -> 
+ cd src/main/mypyc
+ uv run python -c 'import main;'

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 6726 ms
~~~

PyPy
---

~~~
+ pypy src/main.jpy

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 2473 ms
~~~

Rust:
---


~~~
+ cargo build --release

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267 
Time: 319 ms
~~~

Vala:
---

~~~
+ valac --pkg glib-2.0 --pkg posix -X -O3 -X -lm -o target/main-vala src/main.vala

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 1289 ms


~~~

V Lang:
---

~~~
Unsafe: (byte array with tos() to string conversion)

+ v -prod src/main/v/main.v -o target/vmain

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 359 ms

With strings.Builder

+ v -prod src/main/v/main-builder.v -o target/vmainb

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 785 ms
~~~

Zig:
---

~~~

+ cd target
+ zig build-exe -O ReleaseFast ../src/mainzig.zig

Random numbers parsed: 10000000 str: 46706439.74837267 num: 46706439.74837267
Time: 316 ms
~~~
