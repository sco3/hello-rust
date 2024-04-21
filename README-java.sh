#!/bin/bash 


source ./cpu-governor.sh

cat >> README.md <<-EOF

Java:
---

~~~
$(~/prg/java-21/bin/java -version 2>&1| tail -n 1)

$(bash -x -c '~/prg/java-21/bin/javac -d target src/Main.java ' 2>&1)

$(~/prg/java-21/bin/java -cp target Main)


$(bash -x -c '~/prg/graalvm/bin/javac -d target src/Main.java ' 2>&1)

$(~/prg/graalvm/bin/java -version 2>&1| tail -n 1)

$(~/prg/graalvm/bin/java -cp target Main)


Fast double parser:

$(bash -x -c '~/prg/graalvm/bin/javac  -cp "lib/*" -d target src/MainFast.java ' 2>&1)

$(~/prg/graalvm/bin/java -version 2>&1| tail -n 1)

$(~/prg/graalvm/bin/java -cp "lib/*:target" MainFast)





$(bash -x -c '~/prg/graalvm/bin/native-image -O3 --no-fallback -cp target Main target/Main > /dev/null' 2>&1)

$(target/Main)

~~~
EOF