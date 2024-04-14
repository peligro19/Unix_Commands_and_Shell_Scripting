# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to perform merge sort
merge_sort() {
    local arr=("$@")  # Get the array passed as arguments
    local n=${#arr[@]}

    # Function to merge two subarrays
    merge() {
        local left=("${arr[@]:$1:$2}")
        local right=("${arr[@]:$3:$4}")
        local i=0
        local j=0
        local k=$1

        while (( i < ${#left[@]} && j < ${#right[@]} )); do
            if (( left[i] <= right[j] )); then
                arr[k]=${left[i]}
                i=$((i + 1))
            else
                arr[k]=${right[j]}
                j=$((j + 1))
            fi
            k=$((k + 1))
        done

        while (( i < ${#left[@]} )); do
            arr[k]=${left[i]}
            i=$((i + 1))
            k=$((k + 1))
        done

        while (( j < ${#right[@]} )); do
            arr[k]=${right[j]}
            j=$((j + 1))
            k=$((k + 1))
        done
    }

    # Function to perform recursive merge sort
    merge_sort_recursive() {
        local left=$1
        local right=$2

        if (( left < right )); then
            local mid=$(( (left + right) / 2 ))
            merge_sort_recursive $left $mid
            merge_sort_recursive $((mid + 1)) $right
            merge $left $((mid - left + 1)) $((mid + 1)) $((right - mid))
        fi
    }

    # Call the recursive merge sort function
    merge_sort_recursive 0 $((n - 1))

    # Output the sorted array
    echo "Sorted array:"
    for element in "${arr[@]}"; do
        echo "$element"
    done
}

# Example usage
my_array=(12 11 13 5 6)
merge_sort "${my_array[@]}"