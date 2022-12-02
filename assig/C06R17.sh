clear
read -p "Enter Parking Hours : " hrs

if [ $hrs -eq 1 ]; then
total=$(( hrs *30 ))
echo "Parking Charge is : $total"

        elif [[ $hrs -gt 1 && $hrs -le 9 ]]; then

        hrs=$(( hrs - 1 ))
        total1=30
        total=$(( hrs * 20 ))
        total=$(( total + total1 ))
        echo "Parking Charge is : $total"

                elif [[ $hrs -gt 9 && $hrs -le 24 ]]; then

                total=200

		echo "Parking Charge is : $total"
else
echo "Invalid Input. Enter number 1 - 24 only."
fi
