name=$1
counter=$2

while true
do

counter=$((counter+1))
echo "Link :"
read link
name=$1
name+="_$counter.jpg"

wget $link -O $name
done
