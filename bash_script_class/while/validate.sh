#!/bin/bash 

echo "=== NIGHTCLUB ENTRY VALIDATION ==="
echo "You MUST be 18+ to enter"
echo ""

age=0 #Starts with an invalid age 

#keep asking while age is less than 18
while [[ $age -lt 18 ]] #while age < 18 
do 
	read -p " How old are you" age 
	
	if ! [[  "$age" =~ ^[0-9]+$ ]]; then
		echo "Please enter a valid number!"
		age=0 #reset the age to keep the loop going 
		continue #skip
		
fi 

if [[ $age -lt 18 ]]; then 
	echo "Sorry, you are only $age. come back when you are 18+!"
	sleep 2
fi 
done 
echo "Welcome! Enjoy the class"

