#!/bin/bash

#script to ask for a name and check if it was entered 

read -p "what is your name?" name 

if [[ -z ${name} ]]
then 
	echo "please enter your name"
fi 

echo "script is compliment!"   
