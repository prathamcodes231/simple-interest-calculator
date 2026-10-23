
#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

# Get principal amount
read -p "Enter Principal Amount: " principal

# Get rate of interest
read -p "Enter Rate of Interest (%): " rate

# Get time period
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total=$(echo "scale=2; $principal + $interest" | bc)

# Display Results
echo "-----------------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
echo "-----------------------------------"
