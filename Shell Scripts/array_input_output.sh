# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Prompt the user to enter the size of the array
echo "Enter the size of the array:"
read size

# Initialize an empty array
declare -a myArray

# Loop to take user input for each element of the array
echo "Enter $size elements of the array:"
for ((i=0; i<size; i++))
do
    read element
    myArray[$i]=$element
done

# Print the elements of the array
echo "Elements of the array:"
for element in "${myArray[@]}"
do
    echo "$element"
done