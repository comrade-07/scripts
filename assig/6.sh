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
echo "Plan A : $totalA"
