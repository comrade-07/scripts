clear

read -p "Number of Hours : " hrs
read -p "Weekly Sales    : " sales
echo

if [ $hrs -gt 0 ] && [ $hrs -le 40 ]; then
rate=7.5
planB=`echo "scale=1; $hrs*$rate" | bc`
totalB=`echo "scale=1; $sales*7/100" | bc`
totalB=`echo "scale=1; $planB + $totalB" | bc`
	elif [ $hrs -gt 40 ]; then
	rateB=300
	hrs=$((hrs-40))
	planB=`echo "scale=0; $hrs*10" | bc`
	planB=$((rateB + planB))
	totalB=`echo "scale=0; $sales*7/100" | bc`
	totalB=`echo "scale=0; $((planB + totalB))" | bc`
else
echo
fi
echo "Plan B : $totalB"
