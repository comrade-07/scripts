clear
months=("" "January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December")

read -p "Enter Month Number : " num
if [[ $num -gt 0 && $num -le 12 ]];
then
echo "${months[num]}"
else
echo "Invalid Month Number"
fi

