clear
read -p "Enter Purchased Balls : " qty

if [ "$qty" -gt 0 ] && [ "$qty" -le 2 ]; then
qty=$(( qty * 300 ))
echo "Cost is P$qty"
elif [ "$qty" -ge 3 ] && [ "$qty" -lt 10 ]; then
qty=$(( qty * 250 ))
echo "Cost is P$qty"
elif [ "$qty" -ge 10 ]; then
qty=$(( qty * 200 ))
echo "Cost is P$qty"
else
echo "Invalid Input"
fi
