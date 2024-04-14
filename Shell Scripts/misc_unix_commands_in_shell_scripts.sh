# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# =============================================================================

# Function to extract specific columns from a CSV file using awk
extract_columns() {
    local filename="$1"
    awk -F',' '{print $1, $3}' "$filename"
}

# Example usage
extract_columns "data.csv"

# =============================================================================

# Function to search for a pattern in a file using grep
search_pattern() {
    local filename="$1"
    grep "pattern" "$filename"
}

# Example usage
search_pattern "file.txt"

# =============================================================================

# Function to extract specific columns from a tab-delimited file using cut
extract_columns() {
    local filename="$1"
    cut -f1,3 "$filename"
}

# Example usage
extract_columns "data.tsv"

# =============================================================================

# Function to replace text in a file using sed
replace_text() {
    local filename="$1"
    sed -i 's/old_text/new_text/g' "$filename"
}

# Example usage
replace_text "file.txt"

# =============================================================================

# Function to extract the first column from the output of ls -l command
extract_first_column() {
    ls -l | awk '{print $1}'
}

# Example usage
extract_first_column

# =============================================================================

# Function to search for lines containing a pattern in a file using grep
search_pattern() {
    local filename="$1"
    grep "pattern" "$filename"
}

# Example usage
search_pattern "file.txt"

# =============================================================================

# Function to extract specific columns from a file using cut
extract_columns() {
    local filename="$1"
    cut -d',' -f1,3 "$filename"
}

# Example usage
extract_columns "data.csv"

# =============================================================================

# Function to delete lines matching a pattern from a file using sed
delete_lines() {
    local filename="$1"
    sed -i '/pattern/d' "$filename"
}

# Example usage
delete_lines "file.txt"

# =============================================================================

# Function to filter and print specific lines from a file using awk
filter_lines() {
    local filename="$1"
    awk '/pattern/ {print}' "$filename"
}

# Example usage
filter_lines "file.txt"

# =============================================================================