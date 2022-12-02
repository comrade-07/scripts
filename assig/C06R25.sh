clear

read -p "Number of Hours : " hrs
read -p "Weekly Sales    : " sales
echo

if [ $hrs -ge 30 ] && [ $hrs -le 49 ]; then
        planA=200
        totalA=$((sales*10/100))
        totalA=$((planA + totalA))
                elif [ $hrs -ge 50 ]; then
                planA=300
                totalA=`echo "scale=0; $sales*10/100" | bc`
                totalA=`echo "scale=0; $((planA + totalA))" | bc`
                        elif [ $hrs -gt 0 ] && [ $hrs -lt 30 ]; then
                        totalA=$((sales*10/100))
else
echo
fi
echo "Plan A          : $totalA"

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
echo "Plan B          : $totalB"

totalC=`echo "scale=0; $sales*15/100" | bc`
echo "Plan C          : $totalC"

echo

if (( $(echo "$totalA > $totalB" | bc -l) )) && (( $(echo "$totalA > $totalC" | bc -l) ));
then
  echo "Plan A is the best wage plan"
elif (( $(echo "$totalB > $totalA" | bc -l) )) && (( $(echo "$totalB > $totalC" | bc -l) ));
then
  echo "Plan B is the best wage plan"
else
  echo "Plan C is the best wage plan"
fi


