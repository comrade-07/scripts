clear
read -p "Enter PURCHASE AMOUNT : " amt
echo

if [ $(echo "$amt<1000.00" | bc ) -eq 1 ]; then
net=1.00
        echo    "Your DISCOUNT is      : 0.00"
        amt=`echo "scale=2; $net * $amt" | bc`
elif [ $(echo "$amt>=1000.00" | bc ) -eq 1 ]; then
        dc=`echo "scale=2; 10 / 100 * $amt" | bc`
        echo    "Your DISCOUNT IS      : $dc"
        amt=`echo "scale=2; $amt - $dc" | bc`
else
echo
fi
echo    "Your NET BILL is      : $amt"
