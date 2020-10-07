name=$1
counter=$2
while true

do
counter=$((counter+1))
echo "Link :" 
read link

name=$1
name+="_$counter.jpg"

wget $link -O index.html -q
link=$(cat index.html | grep "og:image" | awk '{print $3}' | grep -o '"[^"]\+"' | sed 's/\"//g')
wget $link -O $name -q
rm -rf index.html

done
