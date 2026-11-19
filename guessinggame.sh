#!/usr/bin/env bash

count_files() {
    find . -maxdepth 1 -type f | wc -l
}

play_game() {
    local files
    local guess
    files=$(count_files)

    echo "Welcome to the Guessing Game!"
    while true; do
        read -r -p "How many files are in the current directory? " guess

        if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid whole number."
        elif (( guess < files )); then
            echo "Too low! Try again."
        elif (( guess > files )); then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed correctly!"
            break
        fi
    done
}

play_game
echo "End of program."
