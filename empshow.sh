clear

echo "ID:Name:Address:DOB:Gender:Email"
echo "================================"

cat emps.txt

echo -e "\n"

read -p "Exit [Q] : " act

if [ "$act" == "q" -o "$act" == "Q" ]
then
	./menu.sh "$1"
fi
