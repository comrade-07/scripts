clear
read -p "Enter hours work in a week   : " hrs
echo

#compute

if [ $hrs -gt 0 ] && [ $hrs -le 30 ]; then

rpay=`echo "scale=2; $hrs * 250.00" | bc`
total=$rpay

echo "Your Payroll Details   :  "
echo "Regular Pay            : $rpay"
echo "Overtime Pay           : "
echo "Total Weekly Pay       : $total"

        elif [ $hrs -gt 30 ] && [ $hrs -le 80 ]; then

	echo "Your Payroll Details   :  "

	rpay=`echo "scale=2; 30 * 250.00" | bc`
	echo "Regular Pay            : $rpay"

	hrs=$(( hrs - 30 ))
	otpay1=$(( hrs * 350 ))
	otpay=`echo "scale=2; $otpay1 * 1.00" | bc`

	echo "Overtime Pay           : $otpay"

	total=`echo "scale=2; $rpay + $otpay" | bc`
	echo "Total Weekly Pay       : $total"
	
        else
        echo "Invalid value for working hours. Kindly enter 1 to 80 only."
fi

