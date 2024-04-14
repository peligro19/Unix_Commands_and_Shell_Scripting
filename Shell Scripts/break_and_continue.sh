# Copyright @ 2024 Sumit Kumar

#!/bin/bash

# Program to demonstrate the usage of break and continue

echo "Loop with break:"
for ((i=1; i<=10; i++)); do
    echo "Iteration $i"
    
    # If i is greater than 5, break out of the loop
    if ((i > 5)); then
        break
    fi
    
    echo "Still going..."
done

echo "Loop with continue:"
for ((i=1; i<=10; i++)); do
    
    # If i is divisible by 3, skip this iteration
    if ((i % 3 == 0)); then
        continue
    fi
    
    echo "Iteration $i"
    echo "Processing..."
done
