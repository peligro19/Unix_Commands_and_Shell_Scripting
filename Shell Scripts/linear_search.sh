# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to perform linear search
linear_search() {
    local arr=("$@")  # Get the array passed as arguments
    local target=$1   # Target value to search for
    local found=false
    local index=-1

    # Loop through the array elements
    for ((i=0; i<${#arr[@]}; i++)); do
        if (( arr[i] == target )); then
            found=true
            index=$i
            break
        fi
    done

    # Output the result
    if $found; then
        echo "Element $target found at index $index"
    else
        echo "Element $target not found in the array"
    fi
}

# Example usage
my_array=(3 6 9 12 15 18 21)
target_value=12

linear_search "${my_array[@]}" "$target_value"