# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Prompt the user to enter the number of rows for the pattern
echo "Enter the number of rows for the pattern:"
read rows

# Loop to print the pattern
for ((i=1; i<=rows; i++))
do
    # Print spaces
    for ((j=rows; j>i; j--))
    do
        echo -n " "
    done
    
    # Print stars
    for ((k=1; k<=i; k++))
    do
        echo -n "* "
    done
    
    echo # Move to the next line
done