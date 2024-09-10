#!/bin/bash

# Gtk theme to flatpak
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --filesystem=$HOME/.icons

sudo flatpak override --env=GTK_THEME=Adwaita-dark
# sudo flatpak override --env=ICON_THEME=Material-Black-Pistachio-Suru
