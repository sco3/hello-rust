

rm -rf README$(./cpu.sh).md

cat /proc/cpuinfo | grep 'model name' | sort -u | awk '{ $1=""; $2="";$3="" ;print }'  > README$(./cpu.sh).md
echo "===" >> README$(./cpu.sh).md
mkdir -p ~/tmp
ls README*.sh | sort | awk '{ print "./" $1 }'  > ~/tmp/all.sh
bash ~/tmp/all.sh