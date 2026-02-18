#!/bin/bash


#this script will check that file is exist or not


read -p "Enter file name to search: " FILENAME


if [ -f "$FILENAME"  ]; then
	echo "file exists"
else
	echo "File does not exist"

fi


