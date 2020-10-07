name="Screenshot "$(date +%y:%m:%d:%H:%m:%s)".png"
touch /tmp/screenshot
echo $name >> /tmp/screenshot

cat /tmp/screenshot
