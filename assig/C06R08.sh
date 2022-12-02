clear
read -p "Enter Your Examination score : " scr

case $scr in 
    100) echo "Your Letter Grade is A" ;;
    9[0-9]) echo "Your Letter Grade is A" ;; 
    8[0-9]) echo "Your Letter Grade is B" ;;
    7[0-9]) echo "Your Letter Grade is C" ;;
    6[0-9]) echo "Your Letter Grade is D" ;;
    [0-59]) echo "Your Letter Grade is E" ;;
	 *) echo "Invalid Examination Score"
esac