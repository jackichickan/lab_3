#!/bin/bash
# Author: Jaci
#9/19/2019
echo "Enter a filename: "
read name
echo "Enter Regular Exp: "
read Regex


egrep "SRegex" "$name" 

echo "Number of phone numbers: "
egrep [0-9]{3}-[0-9]{3}-[0-9]{4}$ "$name" -c

echo "Number of emails: "
grep [a-zA-Z0-9]@[a-zA-Z0-9]\.[a-z] "$name" -c
echo "Number of 303 phone numbers: "
grep ^303-[0-9]{3}-[0-9]{4}$ "$name" -c
echo "Geocities emails will be saved to a file"
egrep [a-zA-Z0-9]@geocities.com "$name" >> email_results.txt
