# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to perform selection sort
selection_sort() {
    local arr=("$@")  # Get the array passed as arguments
    local n=${#arr[@]}

    # Iterate through the array
    for ((i=0; i<n-1; i++)); do
        local min_index=$i

        # Find the index of the minimum element in the unsorted portion
        for ((j=i+1; j<n; j++)); do
            if (( arr[j] < arr[min_index] )); then
                min_index=$j
            fi
        done

        # Swap the minimum element with the first element of the unsorted portion
        local temp=${arr[min_index]}
        arr[min_index]=${arr[i]}
        arr[i]=$temp
    done

    # Output the sorted array
    echo "Sorted array:"
    for element in "${arr[@]}"; do
        echo "$element"
    done
}

# Example usage
my_array=(64 25 12 22 11)
selection_sort "${my_array[@]}"