# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to print all files in a directory starting with a specified prefix
print_files_starting_with_a() {
    local directory="$1"

    # Check if the directory exists
    if [ -d "$directory" ]; then
        # Use ls command with the specified pattern to list files starting with "a"
        ls "$directory"/a*
    else
        echo "Directory $directory does not exist."
    fi
}

# Example usage
print_files_starting_with_a "/path/to/directory"
