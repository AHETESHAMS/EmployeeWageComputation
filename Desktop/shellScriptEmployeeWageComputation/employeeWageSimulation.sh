#!/bin/bash -x
echo "Welcome To Employee Wage...."
dailyWage=0
workingDays=0
workHours=0
while [[ $workingDays -lt 20 && $workHours -lt 100 ]]
do
	randomCheck=$(( RANDOM%3 ))
case $randomCheck  in
	1)
		echo "Employee is Present For Full Time"
		(( workingDays++ ))
		workHours=$(( workHours+8 ))
		totaldDailyWage=$(( totaldDailyWage+20*8 ))
		;;
	0)
		echo "Employee is Absent"
		;;
	2)
      echo "Employee Present for Part Time"
      (( workingDays++ ))
		 workHours=$(( workHours+4 ))
      totaldDailyWage=$(( totaldDailyWage+20*4 ))
		;;
esac
(( i++ ))
done
echo "Total Working Days are:-"$workingDays
echo "Total Working Hours are :-"$workHours
echo "Total Wage is:-"$totaldDailyWage

