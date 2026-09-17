#!/bin/bash

# Prompt the user for input
read -p "Enter the principal amount: " principal
read -p "Enter the interest rate (as a decimal, e.g., 0.05 for 5%): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest
interest=$(echo "$principal * $rate * $time" | bc -l)

# Calculate the total amount
total=$(echo "$principal + $interest" | bc -l)

# Display the results
echo "Simple interest: $interest"
echo "Total amount: $total"
