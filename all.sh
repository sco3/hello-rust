

rm -rf README.md 
mkdir -p ~/tmp 
ls README*.sh | sort | awk '{ print "./" $1 }'  > ~/tmp/all.sh
bash ~/tmp/all.sh