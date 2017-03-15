clear
echo "Simple ERP"
echo "=========="

echo -e "Date : " `date` "\t\t\t\t\t" "User : $1"
echo -e "\n"

echo "Select Option"
echo "-------------"

echo " 1 - Add Employee"
echo " 2 - Show Employee"
echo -e " Q - Exit\n"
read -p " Option : " opt

case "$opt" in
    "1") ./empadd.sh "$1"
    ;;
    "2") ./empshow.sh "$1"
    ;;
    "*") exit
    ;;
esac
