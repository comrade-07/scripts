clear
fn1=500
fn2=800

read -p "Enter SPEED in kph : " spd

if [ "$spd" -gt 0 ] && [ "$spd" -lt 80 ]; then
echo "FINE in Pesos : 0"
elif [ "$spd" -ge 80 ] && [ "$spd" -lt 100 ]; then
echo "FINE in Pesos : $fn1"
elif [ "$spd" -ge 100 ]; then
echo "FINE in Pesos : $fn2"
else 
echo "Invalid Input"
fi
