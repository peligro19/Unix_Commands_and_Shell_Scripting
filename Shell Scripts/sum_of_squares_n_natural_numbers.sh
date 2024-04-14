# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to calculate the sum of squares of numbers from 1 to n
sum_of_squares() {
    local n=$1
    local sum=$(( n * (n + 1) * (2 * n + 1) / 6 ))
    echo "Sum of squares of numbers from 1 to $n is $sum"
}

# Example usage
read -p "Enter a number (n): " n
sum_of_squares "$n"
