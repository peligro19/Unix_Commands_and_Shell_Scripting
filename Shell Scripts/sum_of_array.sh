# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to calculate the sum of all elements in an array
sum_of_array() {
    local arr=("$@")  # Get the array passed as arguments
    local sum=0

    # Loop through each element of the array and add it to the sum
    for element in "${arr[@]}"; do
        (( sum += element ))
    done

    echo "Sum of array elements is $sum"
}

# Example usage
my_array=(3 6 9 12 15)
sum_of_array "${my_array[@]}"
