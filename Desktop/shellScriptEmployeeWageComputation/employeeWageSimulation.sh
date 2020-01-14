#!/bin/bash -x
echo "Welcome To Employee Wage...."
randomCheck=$(( RANDOM%2 ))
if [[ $randomCheck -ge 1 ]]
then
	echo "Employee is Present"
elif [[ $randomCheck -eq 0 ]]
then
	echo "Employee is Absent"
fi

