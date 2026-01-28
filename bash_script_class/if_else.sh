#!/bin/bash

#if [[ condition ]]
#then 
#    <commands>
#else 
#    <other commands>
#fi 

read -p "what is your name" name

#check if empty 
if [[ -z ${name} ]] 
then 
	#this run ONLY if name is empty(true) 
	echo "Please enter your name"
else 
	#this runs ONLYy if name is NOT empty(false)
	echo "Hi there ${name}"
fi 



