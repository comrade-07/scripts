clear
read -p "Enter Department Code : " code

case $code in 
    a | A) echo "Accounting" ;;
    b | B) echo "Marketing" ;; 
    c | C) echo "Sales" ;;
    d | D) echo "Purchasing" ;;
	*) echo "Invalid Department Code"
esac
