#!/bin/bash 

fruits=("apple" "banana" "carrot" "date" "eggplant")

#this would show all fruits
echo "This are currently present ${fruits[@]}"

#this would print out the second fruit
echo "Do you like ${fruits[1]}?"

#this would print from the second to the forth
echo "I like${fruits[@]:1:3}"

#print from forth to the end
echo "I like${fruits[@]:3}"
