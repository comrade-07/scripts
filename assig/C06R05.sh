clear

read -p "Enter First Number  : " num1
read -p "Enter Second Number : " num2

if [ $num1 -gt $num2 ]
then
	echo "First number is greater"
elif [ $num1 -eq $num2 ]
then
	echo  "The two numbers are equal"
else
	echo "Second number is greater"
fi
