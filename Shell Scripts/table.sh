# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to print the multiplication table of a number
print_table() {
    local number="$1"

    echo "Multiplication table of $number:"
    for ((i=1; i<=10; i++)); do
        result=$((number * i))
        echo "$number * $i = $result"
    done
}

# Example usage
read -p "Enter a number to print its multiplication table: " user_number
print_table "$user_number"