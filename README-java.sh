#!/bin/bash 


source ./cpu-governor.sh

cat >> README$(./cpu.sh).md <<-EOF

Java:
---

~~~
$(~/prg/jdk/bin/java -version 2>&1| tail -n 1)

$(bash -x -c '~/prg/jdk/bin/javac -d target src/main/java/Main.java ' 2>&1)

$(~/prg/jdk/bin/java -cp target Main)


$(bash -x -c '~/prg/graalvm/bin/javac -d target src/main/java/Main.java ' 2>&1)

$(~/prg/graalvm/bin/java -version 2>&1| tail -n 1)

$(~/prg/graalvm/bin/java -cp target Main)


Fast double parser:

$(bash -x -c '~/prg/graalvm/bin/javac  -cp "lib/*" -d target src/main/java/MainFast.java ' 2>&1)

$(~/prg/graalvm/bin/java -version 2>&1| tail -n 1)

$(~/prg/graalvm/bin/java -cp "lib/*:target" MainFast)



$(bash -x -c '~/prg/graalvm/bin/native-image -O3 --no-fallback -cp target Main target/Main > /dev/null' 2>&1)

$(target/Main)


Fast double parser (native java executable):


$(bash -x -c '~/prg/graalvm/bin/native-image -O3 --no-fallback -cp "target:lib/*" MainFast target/MainFast > /dev/null' 2>&1)

$(target/MainFast)

~~~
EOF