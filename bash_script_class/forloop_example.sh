#!/bin/bash

echo "======= TEXT FILE PROCESSOR=======" 

for file in *.sh 
do 
    echo "Found bash script file $file"
    sleep 1
    #count lines in this file 

    line_count=$(wc -l <"$file") 
    echo " - Contains $line_count lines" 

    if [[ $line_count -eq 0 ]]; then 
echo "-warning: file is empty" 
    sleep 1; 
    fi

done 

echo "process is completed!" 

:
