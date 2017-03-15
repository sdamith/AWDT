clear
echo "Enter Employee Information"
echo "=========================="
echo -e "\n"

read -p "ID      : " id

read -p "Name    : " name

read -p "Address : " addr

read -p "DOB     : " dob

read -p "Gender  : " gen

read -p "E-mail  : " email

echo -e "\n"

read -p "Save [S] or Exit [Q] : " act

if [ "$act" == "S" -o "$act" == "s" ]
then
	echo $id":"$name":"$addr":"$dob":"$gen":"$email >> emps.txt
	echo "Data saved successfully...!"

	read -p "Add New Record [Y/N] : " newr
	if [ "$newr" == "y" -o "$newr" == "Y" ]
	then
		./empadd.sh "$1"
	else
		./menu.sh "$1"
	fi
else
	./menu.sh "$1"
fi

