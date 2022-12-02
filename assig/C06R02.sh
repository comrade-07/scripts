clear
read -p "Enter number of Hours: " HRS

#compute

if [ $HRS -le 3 ]; then
	total=$(( HRS * 15 ))	

	elif [ $HRS -gt 3 ]; then
		total=$(( 3 * 15 )) #45
		hrsnew=$(( 3 - HRS )) #3 -12 = -9
		hrsnew=$(( hrsnew * -1 )) #-9 * -1 = 9
		total2=$(( hrsnew * 10 )) # 90
		total=$(( total + total2 )) # 90 + 45 = 135
	else
	echo
fi
echo "Total Bills is $total"




