#!/bin/bash -x
echo "Welcome To Employee Wage...."
i=0
dailyWage=0
workingDays=0
while [[ $i -le 10 ]]
do
	randomCheck=$(( RANDOM%2 ))
	if [ $randomCheck -ge 1 ]
	then
		echo "Employee is Present"
		(( workingDays++ ))
		totaldDailyWage=$(( totaldDailyWage+20*8 ))
	elif [ $randomCheck -eq 0 ]
	then
		echo "Employee is Absent"
	fi
	(( i++ ))
done
echo "Total Working Days are:-"$workingDays
echo "Total Wage is:-"$totaldDailyWage

