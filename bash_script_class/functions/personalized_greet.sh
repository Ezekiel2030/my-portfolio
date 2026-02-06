#!/bin/bash

#Funtion that takes 1 argument ($1)

greet_person() {
 echo "Hello, $1! Nice to meet you!"
 echo "$2 Welcome to TSacademy"
 echo "$3 We are proud you are part of us"
 echo"" 
}

#calling with different arguments
greet_person "Alice"
greet_person "Elijah"
greet_person "temitope"
greet_person "james"
greet_person "Adekunle"

