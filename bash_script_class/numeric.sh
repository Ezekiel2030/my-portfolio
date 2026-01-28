#!/bin/bash

num1=10
num2=25
num3=10

# -eq : Equal
if [[ $num1 -eq $num3 ]]; then 
	echo "$num1 and $num3 are equal"
fi 

# ne : Not equal
if [[ $num1 -ne $num2 ]]; then 
	echo "$num1 and $num 2 aren't equal"
fi 

# -lt : Less Than 
if [[ $num1 -lt $num2 ]]; then 
	echo "$num1 is less than $num2"
fi

# -le :Less than or equal
if [[ $num1 -le $num3 ]]; then 
	echo "$num1 iss less than or equal to $num3"
fi

# -gt :Greater Than 
if [[ $num2 -gt $num1 ]]; then 
	echo "$num2 iis greater than $num1"
fi

# -ge : Greater than to or euqal 
if [[ $num1 -ge $num3 ]]; then 
	echo "$num1 is greater than or equal to $num3"
fi 

#Working with negative numbers 
templ=5
temp2=0
if [[ $temp1 -lt $temp2 ]]; then
	echo "$temp1 is colder than $temp2"
fi

