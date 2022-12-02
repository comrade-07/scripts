clear 
echo -e "\t Subject Pass or Failed Program"

echo -n -e "Enter your subject \t: "
read sub
while true; do
echo -n -e "Enter your grade   \t: "
read grd
case $grd in
[^a-zA-z]*)
break
;;

[0-9])
exit
;;

*)
echo "Invalid input" >&2
esac
done


if [[ $grd -ge 75 && $grd -le 100 ]]; then
echo "You Pass your subject $sub with the grade of $grd"
elif [[ $grd -gt 100 ]]; then
echo "You cannot exceed more than 100 on grade"
else
echo "You Failed your subject $sub with the grade of $grd"
fi

echo -e "\t END OF PROGRAM"
