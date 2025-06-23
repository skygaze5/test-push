path=$(cd -- $(dirname -- "${BASH_SOURCE[0]}") && pwd) 
folder=$(echo $path | awk -F/ '{print $NF}')

cd ~/scripts/$folder
a=$RANDOM
echo $a > random

git add data
git commit -m $a
git push origin main
