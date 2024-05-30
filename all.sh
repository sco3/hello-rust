

rm -rf README.md 

cat /proc/cpuinfo | grep 'model name' | sort -u | awk '{ $1=""; $2="";$3="" ;print }'  > README.md
echo "===" >> README.md
mkdir -p ~/tmp 
ls README*.sh | sort | awk '{ print "./" $1 }'  > ~/tmp/all.sh
bash ~/tmp/all.sh