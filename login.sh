clear
echo "Simple ERP"
echo "=========="
echo -e "\n"

echo -en "User ID  : "
read uid

echo -en "\nPassword : "
read pas

#echo $uid

tmp_uid=`grep $uid users.txt | cut -d ":" -f1`

#echo $tmp_uid

if [ "$tmp_uid" == "$uid" ]
then
	tmp_pas=`grep $uid users.txt | cut -d ":" -f2`
	#echo $tmp_pas

	if [ "$tmp_pas" == "$pas" ]
	then
		./menu.sh $uid
	else
		./error.sh "Password"
	fi
else
	./error.sh "User ID"
fi 
