clear

read -p "Number of Hours : " hrs
read -p "Weekly Sales    : " sales
echo

if [ $hrs -ge 30 ] && [ $hrs -le 49 ]; then
        planA=200.00
	totalA=`echo "scale=2; $sales * 10/100" | bc`
	totalA=`echo "scale=2; $planA + $totalA" | bc`
                elif [ $hrs -ge 50 ]; then
                planA=300.00
                totalA=`echo "scale=2; $sales * 10/100" | bc`
                totalA=`echo "scale=2; $planA + $totalA" | bc`
                        elif [ $hrs -gt 0 ] && [ $hrs -lt 30 ]; then
                        totalA=$((sales*10/100))
else
echo
fi
echo "Plan A : $totalA"

if [ $hrs -gt 0 ] && [ $hrs -le 40 ]; then
rate=7.50
percent=0.07
planB=`echo "scale=2; $hrs * $rate" | bc`
totalB=`echo "scale=2; $sales * $percent" | bc`
totalB=`echo "scale=2; $planB + $totalB" | bc`
        elif [ $hrs -gt 40 ]; then
	percent=0.07
        rateB=300.00
	rate2=10.00
        hrs=$((hrs - 40))
        planB=`echo "scale=2; $hrs * $rate2" | bc`
        planB=`echo "scale=2; $rateB + $totalB" | bc`
        totalB=`echo "scale=2; $sales * $percent" | bc`
        totalB=`echo "scale=2; $planB + $totalB" | bc`
else
echo
fi
echo "Plan B : $totalB"

totalC=`echo "scale=2; $sales*15/100" | bc`
echo "Plan C : $totalC"

echo $totalA
echo $totalB
echo $totalC

if (( $(echo "$totalA > $totalB" | bc -l) )) && (( $(echo "$totalA > $totalC" | bc -l) ));
then
  echo "Plan A is the best wage plan"
elif (( $(echo "$totalB > $totalA" | bc -l) )) && (( $(echo "$totalB > $totalC" | bc -l) ));
then
  echo "Plan B is the best wage plan"
else
  echo "Plan C is the best wage plan"
fi
