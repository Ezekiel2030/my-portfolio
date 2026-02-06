#!/bin/bash

#WITHOUT function

echo "==== MAKING COFFEE ===="
echo "1. boil water"
echo "2. Add Coffee grounds"
echo "3. Brew for 4 minutes"
echo "4. Pour into your cup"
echo "Enjoy your coffee!"
echo "" 

echo "==== MAKING COFFEE ===="
echo "1. boil water"
echo "2. Add Coffee grounds"
echo "3. Brew for 4 minutes"
echo "4. Pour into your cup"
echo "Enjoy your coffee!"
echo ""  

#WITH function
echo ""
echo "==== MAKING COFFEE (f)===="
functionmake_coffee() {
echo "1. boil water"
echo "2. Add Coffee grounds"
echo "3. Brew for 4 minutes"
echo "4. Pour into your cup"
echo "Enjoy your coffee!"
}

#Use function multiple times
make_coffee #first coffee
make_coffee #second coffee - same code. different execution 
