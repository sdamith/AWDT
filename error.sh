clear

echo -e "\nInvalid" "$1" "...!\n"

echo -en "Return [R] : "
read rtn

if [ "$rtn" == "r" -o "$rtn" == "R" ]
then
	./login.sh
else
	exit
fi

#write function to quit
