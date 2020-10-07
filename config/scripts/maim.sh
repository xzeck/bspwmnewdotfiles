name = $1
counter = 1

while true

do
maim -s ~/Desktop/$name-$counter.png
counter = $((counter+1))

read -rsn1 input

if ["$input" = "q"]; then
	exit
fi

done
