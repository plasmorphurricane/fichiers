#!/bin/bash

# Function to print error messages
function error_exit {
    echo "$1" >&2
    exit 1
}

# Install apt packages
sudo apt install -y curl git neofetch htop ranger vim flatpak stow vlc calibre easytag brasero alacritty || error_exit "Failed to install apt packages."

# Flathub
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo || error_exit "Failed to add flathub."

# Create directories
mkdir -p "$HOME/lab"
mkdir -p "$HOME/.themes"
mkdir -p "$HOME/.icons"
