#!/bin/bash -x
echo "Welcome To Employee Wage...."
i=0
dailyWage=0
workingDays=0
while [[ $i -le 20 ]]
do
	randomCheck=$(( RANDOM%3 ))
case $randomCheck  in
	1)
		echo "Employee is Present For Full Time"
		(( workingDays++ ))
		totaldDailyWage=$(( totaldDailyWage+20*8 ))
		;;
	0)
		echo "Employee is Absent"
		;;
	2)
      echo "Employee Present for Part Time"
      (( workingDays++ ))
      totaldDailyWage=$(( totaldDailyWage+20*4 ))
		;;
esac
(( i++ ))
done
echo "Total Working Days are:-"$workingDays
echo "Total Wage is:-"$totaldDailyWage

