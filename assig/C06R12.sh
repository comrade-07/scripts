clear
read -p "Enter Regular Charge   : " chg
read -p "Enter Rental Hours     : " hrs
echo

#compute

if [ $hrs -le 3 ]; then
	total=$(( hrs * chg ))	
echo "First three hours is   : $total "
echo "Your Rental Bill is    : "
	elif [ $hrs -gt 3 ]; then

echo "Your Rental Bill is    : " 
		total=$(( 3 * chg ))  				#3x value of rgular
echo "First three hours is   : $total " 
		hrsnew=$(( hrs - 3 )) 				# 10 - 3 hrs
		xcs=$(( hrsnew * chg )) 			# 7 * 25 = 175
		xcs2=`echo "scale=2; 10 / 100 * $xcs" | bc`
		xcs3=`echo "scale=2; $xcs - $xcs2" | bc`
echo "Excess of three hours  : $xcs3"
		total=`echo "scale=2; $total + $xcs3" | bc` 	# 90 + 45 = 135
	else
	echo
fi
echo "Total Rental Bill      : $total"
