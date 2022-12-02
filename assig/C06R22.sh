clear
read -p "Enter Unit of Temperature (C or F)    : " unit
read -p "Enter the temperature to be converted :  " temp

case $unit in

f|F)
tc=$(echo "scale=2;($temp-32)*5/9"|bc)
echo "The equivalent in Celsius is $tc"
;;

c|C)
tf=$(echo "scale=2;((9/5) * $temp) + 32" |bc)
echo "The equivalent in Fahrenheit is $tf"
;;

*)
echo "Invalid temperature type. C or F only."
;;

esac
