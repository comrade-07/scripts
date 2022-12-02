clear
read -p "Enter a number : " num

if [[ $num -ge 0 ]] && [[ $num -le 10 ]]; then
echo "VALID"
else
echo "INVALID"
fi
