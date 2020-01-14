#!/bin/bash -x
echo "Welcome To Employee Wage...."
i=0
dailyWage=0
workingDays=0
while [[ $i -le 10 ]]
do
	randomCheck=$(( RANDOM%3 ))
	if [ $randomCheck -eq 1 ]
	then
		echo "Employee is Present For Full Time"
		(( workingDays++ ))
		totaldDailyWage=$(( totaldDailyWage+20*8 ))
	elif [ $randomCheck -eq 0 ]
	then
		echo "Employee is Absent"
	else
      echo "Employee Present for Part Time"
       (( workingDays++ ))
       totaldDailyWage=$(( totaldDailyWage+20*4 ))
	fi
	(( i++ ))
done
echo "Total Working Days are:-"$workingDays
echo "Total Wage is:-"$totaldDailyWage

