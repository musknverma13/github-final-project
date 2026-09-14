#!/bin/bash

# Simple Interest Calculator in Bash

echo "=========================================="
echo "        SIMPLE INTEREST CALCULATOR        "
echo "=========================================="

# Prompt for user inputs
read -p "Enter Principal Amount (P): " principal
read -p "Enter Annual Rate of Interest in % (R): " rate
read -p "Enter Time Period in years (T): " time

# Input validation to ensure non-empty inputs
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo "Error: All input fields (Principal, Rate, Time) are required."
    exit 1
fi

# Calculate Simple Interest using 'bc' for floating-point arithmetic
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total_amount=$(echo "scale=2; $principal + $interest" | bc)

echo "------------------------------------------"
echo "RESULTS:"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time year(s)"
echo "------------------------------------------"
echo "Simple Interest  : $interest"
echo "Total Amount     : $total_amount"
echo "=========================================="
