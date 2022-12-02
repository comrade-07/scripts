clear
echo -e "This Program will calculate Perimeter, Area, or Volume of a Square\n"
read -p "Please enter the side of the square (meter) : " meter
echo -e "\n\tPress 1 for Perimeter"
echo -e "\tPress 2 for Area"
echo -e "\tPress 3 for Volume"
read -p "What calculation will you choose : " ans
case $ans in
        1 )
                per=$((meter * 4));
                echo -e "\nThe Perimeter of the square is $per cubic meter/s.";;
        2 )
                area=$((meter ** 2));
                echo -e "\nThe Area of square is $area cubic meter/s.";;
        3 )
                volume=$((meter ** 3));
                echo -e "\nThe Volume of the square is $volume cubic meter/s.";;
        * )
                echo -e "\nInvalid Input";;
esac
