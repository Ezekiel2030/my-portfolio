#!/bin/bash

echo "=== CLEANING FILES ==="
echo "Looking for files to organize" 
echo ""

file_count=0
file_count=0 

#Check all file in Break and Continue 
for file in /home/ezekiel/bash_script_class 

#skip directories 
if [[ -d "$file" ]]; then 
	echo "Skipping folder #(basename "$file")"
	((skip_count++))
	continue #Jump to the next file immediately 
fi 

#Skip system/hidden files - files that starts with 
if [[ "$(basename "$file")" ==]]; then
	echo "Skipping hidden file:" $(basename "$file")"
	((skip_count++))
	continue #jump to the next file immediately
fi 
#Skip files already in correct format 
if [[ "$file" == *. organized ]]
	echo "Already organized" $(basename "$file")"
	((skip_count++))
	continue 
fi
#process normal files 
echo "Organzing: $(basename "$file")"
mv file $file" "${file}.organized" 
((file_count++))
done 
echo "" 
echo "summary"
echo " _ " 
echo " -Organized: $file_count files"
echo " - skipped : $skip_count items"
fi 
