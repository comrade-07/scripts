clear

read -p "Enter Quiz 1 Score : " q1
if [ $(echo "$q1 >= 50.00" | bc) -eq 1 ] && [ $(echo "$q1 <=100.00" | bc) -eq 1 ]; then
q1=1
else
q1=0
fi

read -p "Enter Quiz 2 Score : " q2
if [ $(echo "$q2 >= 50.00" | bc) -eq 1 ] && [ $(echo "$q2 <=100.00" | bc) -eq 1 ]; then
q2=1
else
q2=0
fi

read -p "Enter Quiz 3 Score : " q3
if [ $(echo "$q3 >= 50.00" | bc) -eq 1 ] && [ $(echo "$q3 <=100.00" | bc) -eq 1 ]; then
q3=1
else
q3=0
fi

read -p "Enter Quiz 4 Score : " q4
if [ $(echo "$q4 >= 50.00" | bc) -eq 1 ] && [ $(echo "$q4 <=100.00" | bc) -eq 1 ]; then
q4=1
else
q4=0
fi

read -p "Enter Quiz 5 Score : " q5
if [ $(echo "$q5 >= 50.00" | bc) -eq 1 ] && [ $(echo "$q5 <=100.00" | bc) -eq 1 ]; then
q5=1
else
q5=0
fi

read -p "Enter Quiz 6 Score : " q6
if [ $(echo "$q6 >= 50.00" | bc) -eq 1 ] && [ $(echo "$q6 <=100.00" | bc) -eq 1 ]; then
q6=1
else
q6=0
fi

read -p "Enter Final Exam Score : " final
if [ $(echo "$final >= 50.00" | bc) -eq 1 ] && [ $(echo "$final <=100.00" | bc) -eq 1 ]; then
final=1
else
final=0
fi

total=$(( q1+q2+q3+q4+q5+q6 ))

if [ $(echo "$total >= 3" | bc) -eq 1 ] && [ $final -eq 1 ]; then
echo "You've Passed"
else
echo "You've Failed"
fi
