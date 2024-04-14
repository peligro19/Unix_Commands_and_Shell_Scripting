# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to calculate the sum of all digits in a number
sum_of_digits() {
    local number="$1"
    local sum=0

    # Loop through each digit of the number
    while [ $number -gt 0 ]; do
        digit=$((number % 10))
        sum=$((sum + digit))
        number=$((number / 10))
    done

    echo "Sum of digits in $1 is $sum"
}

# Example usage
read -p "Enter a number: " user_number
sum_of_digits "$user_number"
