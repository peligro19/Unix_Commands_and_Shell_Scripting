# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to find pairs of elements in a sorted array that sum up to a given value k
find_pairs() {
    local arr=("$@")  # Get the sorted array passed as arguments
    local target=$1   # Target sum value
    local left=0
    local right=$(( ${#arr[@]} - 1 ))

    # Iterate until the two pointers meet
    while (( left < right )); do
        local sum=$(( arr[left] + arr[right] ))

        if (( sum == target )); then
            echo "Pair found: ${arr[left]} + ${arr[right]} = $target"
            left=$(( left + 1 ))
            right=$(( right - 1 ))
        elif (( sum < target )); then
            left=$(( left + 1 ))
        else
            right=$(( right - 1 ))
        fi
    done
}

# Example usage
my_array=(1 2 3 4 5 6 7 8 9 10)
sum=11
find_pairs "$sum" "${my_array[@]}"
