#!/bin/bash


# this script will give us a space to enter the service name to check the status of the particular service on your server



read -p "enter the service name: " SERVICE
read -p "Do you really want to check the status of $SERVICE ? (y/n)" CHOICE

if [ "$CHOICE" = "y" ]; then
   STATUS=$(systemctl is-active $SERVICE)
   if [ "$STATUS" = "active" ]; then
     echo "$SERVICE is running"
   else
      echo "$SERVICE is not working"
fi
else
 echo "Process skipped"
fi

