echo Fetching the webpage

wget https://ffmpeg.zeranoe.com/builds/win64/static/?C=M&O=D -O index.html

date=$(cat index.html | grep -o -P '(?=<td>).*(?=</td>)' | awk '{print $4}' | grep -o -P '(?<=<td>).*'| awk 'NR >=2 && NR <=2')

link=$(cat index.html | grep -o -P '(?=<td>).*(?=</td>)' | awk 'NR >=1 && NR <=1' | grep -o -P '(?=<a).*(">)' | awk '{print $4}' | sed 's/\"//g'| grep -o -P '(?=ffmpeg).*'
)
link=https://ffmpeg.zeranoe.com/builds/win64/static/$link

echo downloading file dated $date 
wget $link

rm -rf index.html
