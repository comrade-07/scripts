clear
read -p "Enter hours work in a week   : " hrs
read -p "Enter employee hourly rate   : " rate
echo

#compute

if [ $hrs -eq 40 ]; then

rpay=$(( hrs * rate ))
total=$rpay

echo "Your Payroll Details   :  "
echo "Regular Pay            : $rpay"
echo "Overtime Pay           : "

        elif [ $hrs -gt 40 ] && [ $hrs -le 100 ]; then

	echo "Your Payroll Details   :  "

	rpay=`echo "scale=2; 40.00 * $rate" | bc`
	echo "Regular Pay            : $rpay"

	hrs=$(( hrs - 40 ))
	otpay1=$(( hrs * rate ))
	otpay2=`echo "scale=2; 50 / 100 * $otpay1" | bc`
	otpay=`echo "scale=2; $otpay1 + $otpay2" | bc`

	echo "Overtime Pay           : $otpay"

	total=`echo "scale=2; $rpay + $otpay" | bc`
	
        else
        echo "Invalid hours, Valid values : 40 to 100 hours only"
fi
echo "Total Weekly Pay       : $total"
