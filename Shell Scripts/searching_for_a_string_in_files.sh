# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to search for a string in files
search_string_in_files() {
    local directory="$1"
    local search_string="$2"
    echo "Files containing '$search_string' in $directory:"
    grep -rnw "$directory" -e "$search_string"
}

# Example usage
search_string_in_files "/path/to/directory" "search_string"
