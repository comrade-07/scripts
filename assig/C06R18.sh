clear
read -p "Enter Over Limit : " spd

#fine=("" "10 Pesos" "20 Pesos" "30 Pesos" "40 Pesos" "50 Pesos" )

case $((
  (spd > 0  && spd <= 10)  * 1 +
  (spd > 10 && spd <= 20) * 2 +
  (spd > 20 && spd <= 30) * 3 +
  (spd > 30 && spd <= 40) * 4 +
  (spd >=41             ) * 5 )) in

(1)
echo "Your FINE is 10 Pesos"
;;

(2)
echo "Your FINE is 20 Pesos"
;;

(3)
echo "Your FINE is 30 Pesos"
;;

(4)
echo "Your FINE is 40 Pesos"
;;

(5)
echo "Your FINE is 50 Pesos"
;;

(*)
echo "Invalid Input. Enter number greater than 0";;
esac

