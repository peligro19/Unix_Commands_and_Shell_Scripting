# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to perform insertion sort
insertion_sort() {
    local arr=("$@")  # Get the array passed as arguments
    local n=${#arr[@]}

    # Iterate through the array
    for ((i=1; i<n; i++)); do
        local key=${arr[i]}
        local j=$((i - 1))

        # Move elements of arr[0..i-1], that are greater than key, to one position ahead of their current position
        while (( j >= 0 && arr[j] > key )); do
            arr[j+1]=${arr[j]}
            j=$((j - 1))
        done

        arr[j+1]=$key
    done

    # Output the sorted array
    echo "Sorted array:"
    for element in "${arr[@]}"; do
        echo "$element"
    done
}

# Example usage
my_array=(12 11 13 5 6)
insertion_sort "${my_array[@]}"
