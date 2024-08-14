#!/bin/bash

# Get the current hour (in 24-hour format)
current_hour=$(date +"%H")

# Get the current user's name
user_name=$(whoami)

# Get the current date and time in the desired format
current_datetime=$(date +"%A, %d %B %Y - %r")

# Determine the greeting based on the hour
if [ $current_hour -ge 5 ] && [ $current_hour -lt 12 ]; then
  greeting="Good Morning"
elif [ $current_hour -ge 12 ] && [ $current_hour -lt 13 ]; then
  greeting="Good Noon"
elif [ $current_hour -ge 13 ] && [ $current_hour -lt 17 ]; then
  greeting="Good Afternoon"
elif [ $current_hour -ge 17 ] && [ $current_hour -lt 21 ]; then
  greeting="Good Evening"
else
  greeting="Good Night"
fi

# Print the final greeting message
echo "$greeting $user_name, Have a nice day!"
echo "It's $current_datetime"
