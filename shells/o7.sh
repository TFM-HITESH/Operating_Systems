#!/bin/bash

# Function to display the menu
show_menu() {
  echo "Select the information you want to check:"
  echo "1. Currently logged users"
  echo "2. Your shell directory"
  echo "3. Home directory"
  echo "4. OS name & version"
  echo "5. Current working directory"
  echo "6. Number of users logged in"
  echo "7. Show all available shells in your system"
  echo "8. Hard disk information"
  echo "9. CPU information"
  echo "10. Memory information"
  echo "11. File system information"
  echo "12. Currently running processes"
  echo "13. Exit"
}

# Function to perform the selected option
perform_option() {
  case $1 in
    1)
      echo "Currently logged users:"
      who
      ;;
    2)
      echo "Your shell directory: $SHELL"
      ;;
    3)
      echo "Home directory: $HOME"
      ;;
    4)
      echo "OS name & version:"
      uname -srv
      ;;
    5)
      echo "Current working directory: $PWD"
      ;;
    6)
      echo "Number of users logged in:"
      who | wc -l
      ;;
    7)
      echo "All available shells in your system:"
      cat /etc/shells
      ;;
    8)
      echo "Hard disk information:"
      df -h
      ;;
    9)
      echo "CPU information:"
      lscpu
      ;;
    10)
      echo "Memory information:"
      free -h
      ;;
    11)
      echo "File system information:"
      df -Th
      ;;
    12)
      echo "Currently running processes:"
      ps -aux
      ;;
    13)
      echo "Exiting the script."
      exit 0
      ;;
    *)
      echo "Invalid option. Please select a valid option."
      ;;
  esac
}

# Main script execution
while true; do
  show_menu
  echo "Enter your choice: "
  read choice
  perform_option $choice
  echo
done
