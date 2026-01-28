#!/bin/bash 

script="myscript.sh"
echo 'echo "Hello"' >"$script"
chmod 644 "$script" 

# -R: Readable 
if [[ -r "$script" ]]; then 
	echo "$script is readable"
fi

# -W: Writable
if [[ -r "$script" ]]; then
   echo "$script is  Writable"
fi

# -X: executable 
if [[ -r "$script" ]]; then
   echo "$script is executable"
else 
   echo"$script is NOT executable"


fi
#Make the file executable
chmod +x "$script"
if [[ -x "$script" ]]; then
 echo "$script is executable"
  ./$script
else
 echo"$script is NOT executable"

fi


