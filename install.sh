#!/bin/bash

# Check if Taskwarrior is installed
if ! command -v task &> /dev/null; then
    echo "Taskwarrior is not installed. Installing..."
    sudo pacman -S task --noconfirm
else
    echo "Taskwarrior is already installed."
fi

# Check if Taskwarrior-TUI is installed
if ! command -v taskwarrior-tui &> /dev/null; then
    echo "Taskwarrior-TUI is not installed. Installing..."
    sudo pacman -S taskwarrior-tui --noconfirm
else
    echo "Taskwarrior-TUI is already installed."
fi

# Check if TimeWarrior is installed
if ! command -v timew >/dev/null 2>&1; then
    echo "TimeWarrior is not installed. Installing..."
    # Install TimeWarrior
    sudo pacman -S --noconfirm timew

    echo "TimeWarrior has been installed."
else
    echo "TimeWarrior is already installed."
fi


echo "Installation complete."
