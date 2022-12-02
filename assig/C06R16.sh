clear
read -p "Enter Unit Price    : " price
read -p "Enter Quantity      : " qty
echo "Your Bill : "
echo "------------"
amt=`echo "scale=2; $price * $qty * 1.00" | bc`

case $((
  (qty >= 100 )   * 1 +
  (qty >= 50 && qty <= 99 ) * 2 +
  (qty >= 20 && qty <= 49 ) * 3 +
  (qty >= 10 && qty <= 19 ) * 4 +
  (qty >   0 && qty <  10 ) * 5 +
  (price <= 0 ) 	    * 6 +
  (qty   <= 0 ) 	    * 7)) in

(1)
echo "You are entitled to 50% Discount"
echo

echo "Total Purchase Cost : $amt"
dc=`echo "scale=2; 50 / 100 * $amt" | bc`
echo "Discount Amount     : $dc"
net=`echo "scale=2; $amt - $dc" | bc`
echo "Net Cost Amount     : $net"
;;

(2)
echo "You are entitled to 40% Discount"
echo
echo "Total Purchase Cost : $amt"
dc=`echo "scale=2; 40 / 100 * $amt" | bc`
echo "Discount Amount     : $dc"
net=`echo "scale=2; $amt - $dc" | bc`
echo "Net Cost Amount     : $net"
;;

(3)
echo "You are entitled to 30% Discount"
echo
echo "Total Purchase Cost : $amt"
dc=`echo "scale=2; 30 / 100 * $amt" | bc`
echo "Discount Amount     : $dc"
net=`echo "scale=2; $amt - $dc" | bc`
echo "Net Cost Amount     : $net"
;;

(4)
echo "You are entitled to 20% Discount"
echo
echo "Total Purchase Cost : $amt"
dc=`echo "scale=2; 20 / 100 * $amt" | bc`
echo "Discount Amount     : $dc"
net=`echo "scale=2; $amt - $dc" | bc`
echo "Net Cost Amount     : $net"
;;

(5)
echo "You are not entitled to any Discount"
dc=0.00
echo
echo "Total Purchase Cost : $amt"
echo "Discount Amount     : $dc"
net=`echo "scale=2; $amt - $dc" | bc`
echo "Net Cost Amount     : $net"
;;

(6)
echo "Invalid Unit Price, Enter value greater than 0"
;;

(7)
echo "Invalid Quantity, Enter value greater than 0"
;;

(*)
echo "Invalid Input"
;;

esac
