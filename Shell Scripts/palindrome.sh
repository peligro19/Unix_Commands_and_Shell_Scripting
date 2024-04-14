# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Function to check if a string is a palindrome
is_palindrome() {
    local input="$1"
    local reversed=""
    local len=${#input}

    # Reverse the input string
    for ((i=len-1; i>=0; i--)); do
        reversed="$reversed${input:i:1}"
    done

    # Compare original and reversed strings
    if [ "$input" = "$reversed" ]; then
        echo "The string '$input' is a palindrome."
    else
        echo "The string '$input' is not a palindrome."
    fi
}

# Example usage
read -p "Enter a string: " user_input
is_palindrome "$user_input"