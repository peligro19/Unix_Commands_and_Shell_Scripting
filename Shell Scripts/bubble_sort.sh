# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to perform bubble sort
bubble_sort() {
    local arr=("$@")  # Get the array passed as arguments
    local n=${#arr[@]}

    # Perform the bubble sort
    for ((i=0; i<n-1; i++)); do
        for ((j=0; j<n-i-1; j++)); do
            if (( arr[j] > arr[j+1] )); then
                # Swap arr[j] and arr[j+1]
                local temp=${arr[j]}
                arr[j]=${arr[j+1]}
                arr[j+1]=$temp
            fi
        done
    done

    # Output the sorted array
    echo "Sorted array:"
    for element in "${arr[@]}"; do
        echo "$element"
    done
}

# Example usage
my_array=(64 34 25 12 22 11 90)
bubble_sort "${my_array[@]}"
