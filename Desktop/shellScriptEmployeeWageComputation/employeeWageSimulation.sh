#!/bin/bash -x
present_For_FullTime=1
present_For_Part_Time=2
working_Hours=0
working_Days=0
total_Working_Hours=0
total_Working_Days=0
employee_Rate_Per_Hour=20
function getWorkingHours()
{
	case $1 in
		$present_For_FullTime)
			working_Hours=8
			
			;;
		$present_For_Part_Time)
			working_Hours=4
		
			;;
		*)
			working_Hours=0
			;;
	esac
	echo $working_Hours
}
while [[ $total_Working_Hours -lt 100 && $working_Days -lt 20 ]]
do
	(( working_Days++ ))
	working_Hours="$( getWorkingHours $((RANDOM%3)) )"
	echo  "Working Houers"$working_Hours

	total_Working_Hours=$(( $total_Working_Hours+$working_Hours ))
done
salary=$(( $employee_Rate_Per_Hour*$total_Working_Hours ))
echo $salary
