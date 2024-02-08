#! /usr/bin/env bash

# Initialize Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

if [[ -d "$HOME/.bashrc.d" ]]; then
    SHELL_CONFIG="$HOME/.bashrc.d"

    # Load personal config files first (aliases, functions, etc)
    for file in "$SHELL_CONFIG"/_*; do
        # shellcheck source=/dev/null
        source "$file"
    done

    # Load language speciic files
    for file in "$SHELL_CONFIG"/[!_]*; do
        # shellcheck source=/dev/null
        source "$file"
    done
fi

# Starship Prompt initialization
eval "$(starship init bash)"

# Init shadowenv
eval "$(shadowenv init bash)"

# Use one pass plugins
source /Users/birdcar/.config/op/plugins.sh

# Created by `pipx` on 2023-03-28 23:33:53
export PATH="$PATH:/Users/birdcar/.local/bin"
