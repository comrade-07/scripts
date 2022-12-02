clear
read -p "Enter NTI Amount: " nti;
if [ $nti -le 2500 ]; then
        echo "Your Tax Due is 0 pesos"
elif [[ $nti -ge 2500 && $nti -lt 5000 ]]; then
        a=$((nti - 2500))
        rate=$((a * 3 / 100))
        due=$(( rate + 100))
        echo "Your Tax Due is $due pesos"
elif [[ $nti -ge 5000 && $nti -lt 10000 ]]; then
        a=$((nti - 5000))
        rate=$((a * 3 / 100))
        due=$((rate + 175))
        echo "Your Tax Due is $due pesos"
elif [[ $nti -ge 10000 && $nti -lt 25000 ]]; then
        a=$((nti - 10000))
        rate=$((a * 8 / 100))
        due=$((rate + 425))
        echo "Your Tax Due is $due pesos"
elif [[ $nti -ge 25000 && $nti -lt 50000 ]]; then
        a=$((nti - 25000))
        rate=$((a * 13 / 100))
        due=$((rate + 1625))
        echo "Your Tax Due is $due pesos"
elif [ $nti -ge 50000 ]; then
        a=$((nti - 50000))
        rate=$((a * 13 / 100))
        due=$((rate + 4875))
        echo "Your Tax Due is $due pesos"
else
    echo "Invalid Value"
fi
