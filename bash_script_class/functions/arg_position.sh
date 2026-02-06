#!/bin/bash

#Multiple arguments 

describe_person() { 
    echo "Name $1"
    echo "Age $2"
    echo "City $3"
    echo "All arguments: $0"
    echo "Number of args: $#"
    echo"" 
}

describe_person "Ezekiel" "25" "Canada" 
describe_person "NFC" "100" "London" 
describe_person "Temitope" "50" "Toronto" "Doctor" 


