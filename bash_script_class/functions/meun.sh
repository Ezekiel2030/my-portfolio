#!/bin/bash
# interactive-meun.sh - show how functions create clean menus 

# Color definitions 
RED='\033[0;31M' 
GREEN='\033[0;32m' 
YELLOW='\033[1;33m'
BLUE='\033[0m' # No color 

####################################
# Print colored message 
# Arguments: $1 - color code
#            $2 - Message
####################################
function print_color() {
 echo -e "${1}${2}${NC}" 
}

####################################
# Show system information 
####################################
function Show_system_info() {
  clear 
  print_color $BLUE "=== SYSTEM INFORMATION ===" 
  echo "" 

  echo " Hostname: $(hostname)" 
  echo " Kernal:   $(uname -r)" 
  echo "Uptime:    $(uptime -p)" 
  echo "Date:     $(date)"
  
  echo "" 
  
  read -p "press enter to continue...." 

}

#Show Disk Usage 

show_disk_usage() {
    clear 
    print_color $GREEN "==== DISK USAGE ====" 
    
   echo "" 
 
   df -h | head -10  
    echo "" 
    
       df -h | tail -n +2 | while read line; do
       use_percent=$(echo $line | awk '{print $5}' | sed 's/%//') 
       if [[ $use_percent -gt 80 ]]; then 
	    print_color $RED "warning: $(echo $line || awk 'print $1') is ${use_percent}% full"
        fi  
    
    done 

    echo ""

    read -p "press enter to continue...."
}

# Monitor running processes 

monitor_processes() { 

	clear 
	print_color $YELLOW "==== TOP PROCESSES ====" 
	echo "" 

	echo "1. By CPU	usage"
	ps aux --sort=-%cpu | head -6 
	echo "" 

	read -p "press enter to continue...."
}

# Create a new user 

create_user() {
        clear 
	print_color $BLUE "==== CREATE NEW USER ====" 
	echo "" 

	read -p "Enter username: "username
	read -p "Enter full name: "full name

	if [[ -z "$username" ]] || [[ -z "$fullname" ]]; then 
		print_color $RED "Error: Username and fullname required" 
	else 
	    echo "" 
	    echo "Would create user" 
	    echo "Username: $username" 
	    echo "Full Name: $fullname" 
	    echo "Home: /home/$username" 
	    print_color $GREEN "User: $Username ready to be created"
	fi 
	
	echo "" 
	read -p "press enter to continue...."
}

#Show main menu 

show_menu() { 
        clear 
	print_color $GREEN "==== SYSTEM ADMIN MENU ====" 
	echo "" 
	echo "1. Show system information"
	echo "2. Check Disk Usage" 
	echo "3. Monitor Processes" 
	echo "4. Create New User"
        echo "0. Exit" 
	echo "" 

}

#Main program loop 

main() { 
while true; do #Change colon to semicolon 

	show_menu 

	read -p "Enter your choice" choice
	
	case $choice in 
		1) show_system_info ;; 
		2) show_disk_usage ;; 
		3) monitor_processes ;; 
		4) create_user ;; 
		0) print_color $GREEN "Goodbye!"
		   exit 0 ;; 
		*)  print_color $RED "Invalid choice: Try again" 
                    sleep 2 ;;       
    esac
done  #This match the 'do' above

}

main  
