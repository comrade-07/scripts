clear
read -p "Enter NTI Amount : " nti
if [ $(echo "$nti < 2500.00" | bc) -eq 1 ]
then
     tax=o
     percenttax=0
     totaltax=`echo "scale=2; $tax+$percenttax" | bc`
elif [ $(echo "$nti >= 2500.00 && $nti <= 4999.99" | bc) -eq 1 ]
then
     tax=100
     percenttax=`echo "scale=2; $nti*3/100" | bc`
     totaltax=`echo "scale=2; $tax+$percenttax" | bc`
elif [ $(echo "$nti >= 5000.00 && $nti <= 9999.99" | bc) -eq 1 ]
then
     tax=175
     percenttax=`echo "scale=2; $nti*8/100" | bc`
     totaltax=`echo "scale=2; $tax+$percenttax" | bc`
elif [ $(echo "$nti >= 10000.00 && $nti <= 24999.99" | bc) -eq 1 ]
then
     tax=425
     percenttax=`echo "scale=2; $nti*8/100" | bc`
     totaltax=`echo "scale=2; $tax+$percenttax" | bc`
elif [ $(echo "$nti >= 25000.00 && $nti <= 49999.99" | bc) -eq 1 ]
then
     tax=1625
     percenttax=`echo "scale=2; $nti*13/100" | bc`
     totaltax=`echo "scale=2; $tax+$percenttax" | bc`
elif [ $(echo "$nti >= 50000.00" | bc) -eq 1 ]
then
     tax=4875
     percenttax=`echo "scale=2; $nti*13/100" | bc`
     totaltax=`echo "scale=2; $tax+$percenttax" | bc`
else
     echo "Invalid Examination Score"
fi
     echo "Your TAX Due is $totaltax pesos"
