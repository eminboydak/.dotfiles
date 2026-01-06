#!/usr/bin/env bash

# Check if i3lock-fancy is installed
if ! command -v i3lock-fancy &> /dev/null; then
    echo "Error: 'i3lock-fancy' is not installed." >&2
    echo "Please install it from AUR: paru -S i3lock-fancy" >&2
    # Fallback to i3lock if available
    if command -v i3lock &> /dev/null; then
        echo "Falling back to i3lock..." >&2
        i3lock -c 000000
    else
        exit 1
    fi
else
    i3lock-fancy
fi
