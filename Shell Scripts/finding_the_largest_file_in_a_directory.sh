# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to find the largest file in a directory
find_largest_file() {
    local directory="$1"
    local largest_file=$(ls -l "$directory" | sort -k5 -nr | head -n1)
    echo "Largest file in $directory:"
    echo "$largest_file"
}

# Example usage
find_largest_file "/path/to/directory"
