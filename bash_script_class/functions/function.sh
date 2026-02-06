#!/bin/bash 


#Method 1: with function keyword
function greet_user() { 
    echo "Hello there!"
}


#Method 2: without function keyword 
greet_user2() {
    echo "Hello there again!" 
}

#calling BOTH functions 
greet_user #Output: Hello there!
greet_user2 #Output: Hello there again!

