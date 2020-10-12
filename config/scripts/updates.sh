updates=$(checkupdates | wc -l)

if [ $updates -gt 0 ]; 
then
	echo " "
else
	echo ""
fi
