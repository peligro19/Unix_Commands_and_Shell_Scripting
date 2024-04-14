# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to count lines in a file
count_lines() {
    local file="$1"
    local line_count=$(wc -l < "$file")
    echo "Number of lines in $file: $line_count"
}

# Example usage
count_lines "example.txt"
