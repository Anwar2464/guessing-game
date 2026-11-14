#!/bin/bash

# Guessing Game Project

# Function to count files in the current directory
function count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Store the correct number of files
correct_answer=$(count_files)

# Welcome message
echo "=================================="
echo "       GUESSING GAME"
echo "=================================="
echo "How many files are in the current directory?"

# Continue until the correct answer is found
while true
do
    read -p "Enter your guess: " guess

    # Check if the input is a valid number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid positive number."

    # Check if the guess is too low
    elif [ "$guess" -lt "$correct_answer" ]
    then
        echo "Your guess is too low. Try again!"

    # Check if the guess is too high
    elif [ "$guess" -gt "$correct_answer" ]
    then
        echo "Your guess is too high. Try again!"

    # Correct answer
    else
        echo "Congratulations! Your answer is correct!"
        echo "Thank you for playing!"
        break
    fi
done