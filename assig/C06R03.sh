clear
read -p "Enter an alphabet: " char

if [[ "$char" == *[AaEeIiOoUu]* ]];
then echo "$char is vowel"
elif [[ $char =~ [^a-zA-Z] ]];
then
echo "Invalid Input"
else 
echo "$char is consonant"
fi

