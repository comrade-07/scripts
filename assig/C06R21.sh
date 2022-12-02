clear
echo "CODE|DESTINATION|RATES" >> lists.txt
echo "1|AMERICAN REGION|P50 every 3 mins or less" >> lists.txt
echo "2|ASIAN REGION|P30 every 2 mins or less" >> lists.txt
echo "3|AFRICAN REGION|P40 every 4 mins or less" >> lists.txt
echo "4|EUROPEAN REGION|P35 every 2 mins or less" >> lists.txt

echo "$(cat lists.txt)" | column -t -s "|"
rm lists.txt
echo

read -p "Enter Dest. Code : " code
read -p "Enter Duration   : " dur

case $code in
1)
charge=$(( ((dur+(3-1))/3) *50))
echo "TOTAL CHARGES IS P$charge"
;;

2)
charge=$(( ((dur+(2-1))/2) *30))
echo "TOTAL CHARGES IS P$charge"
;;

3)
charge=$(( ((dur+(4-1))/4) *40))
echo "TOTAL CHARGES IS P$charge"
;;

4)
charge=$(( ((dur+(2-1))/2) *35))
echo "TOTAL CHARGES IS P$charge"
;;

*)
echo "INVALID CODE. ENTER 1 - 4 ONLY."
;;

esac
