# Copyright @ 2024 Sumit Kumar

# Function to check if a number is an Armstrong number
is_armstrong() {
    local number="$1"
    local sum=0
    local num_digits=${#number}
    local temp=$number

    # Calculate the sum of the digits raised to the power of the number of digits
    while [ $temp -gt 0 ]; do
        digit=$((temp % 10))
        sum=$((sum + digit ** num_digits))
        temp=$((temp / 10))
    done

    # Check if the sum is equal to the original number
    if [ $sum -eq $number ]; then
        echo "$number is an Armstrong number."
    else
        echo "$number is not an Armstrong number."
    fi
}

# Example usage
read -p "Enter a number: " user_number
is_armstrong "$user_number"