clear
read -p "Total Number of hours : " hrs


#compute

if [ $hrs -le 3 ]; then

total=30

        elif [ $hrs -gt 3 ]; then

                total=30	

		xdrate=12

                hrs=$(( hrs - 3 ))
                xdrate=$(( hrs * xdrate ))
                total=$(( total + xdrate ))
        else
        echo "Invalid Input"
fi
echo "Parking Fee           : $total"
