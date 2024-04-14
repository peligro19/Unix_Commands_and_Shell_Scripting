# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to perform binary search
binary_search() {
    local arr=("$@")  # Get the array passed as arguments
    local target=$1   # Target value to search for
    local low=0
    local high=$(( ${#arr[@]} - 1 ))

    while (( low <= high )); do
        local mid=$(( (low + high) / 2 ))
        local mid_val=${arr[mid]}

        if (( mid_val == target )); then
            echo "Element $target found at index $mid"
            return 0
        elif (( mid_val < target )); then
            low=$(( mid + 1 ))
        else
            high=$(( mid - 1 ))
        fi
    done

    echo "Element $target not found in the array"
    return 1
}

# Example usage
my_array=(2 4 6 8 10 12 14 16 18 20)
target_value=10

binary_search "${my_array[@]}" "$target_value"