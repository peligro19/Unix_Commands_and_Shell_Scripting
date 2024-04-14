# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to perform Quick Sort
quick_sort() {
    local arr=("$@")  # Get the array passed as arguments
    local left=()
    local right=()
    local pivot=${arr[0]}  # Choose the first element as pivot
    local i

    if [ ${#arr[@]} -le 1 ]; then
        echo "${arr[@]}"
        return
    fi

    # Partition the array into elements less than and greater than the pivot
    for ((i=1; i<${#arr[@]}; i++)); do
        if (( arr[i] <= pivot )); then
            left+=("${arr[i]}")
        else
            right+=("${arr[i]}")
        fi
    done

    # Recursively apply Quick Sort to the left and right partitions
    left=($(quick_sort "${left[@]}"))
    right=($(quick_sort "${right[@]}"))

    # Concatenate the left partition, pivot, and right partition
    echo "${left[@]} $pivot ${right[@]}"
}

# Example usage
my_array=(12 11 13 5 6)
sorted_array=($(quick_sort "${my_array[@]}"))
echo "Sorted array:"
for element in "${sorted_array[@]}"; do
    echo "$element"
done
