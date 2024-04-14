# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to calculate the sum of squares of each digit of a number
sum_of_digit_squares() {
    local number="$1"
    local sum=0

    # Iterate through each digit of the number
    while [ $number -gt 0 ]; do
        digit=$((number % 10))
        sum=$((sum + digit * digit))
        number=$((number / 10))
    done

    echo "Sum of squares of each digit of $1 is $sum"
}

# Example usage
read -p "Enter a number: " user_number
sum_of_digit_squares "$user_number"
