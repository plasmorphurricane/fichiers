#!/bin/bash

# Variables for URLs and paths
BOXES="org.gnome.Boxes"
BRAVE="com.brave.Browser"
DEVTOOLBOX="me.iepure.devtoolbox"
SIGNAL="org.signal.Signal"
SPOTIFY="com.spotify.Client"
WAREHOUSE="io.github.flattool.Warehouse"
METADATACLEANER="fr.romainvigier.MetadataCleaner"
EXTENSION="com.mattjakeman.ExtensionManager"
QBITTORENT="org.qbittorrent.qBittorrent"
LUTRIS="net.lutris.Lutris"
HEROIC="com.heroicgameslauncher.hgl"
NEWS="io.gitlab.news_flash.NewsFlash"
ZEN="io.github.zen_browser.zen"


# Function to print error messages
function error_exit {
    echo "$1" >&2
    exit 1
}

# Install flatpak packages
flatpak install -y flathub $BOXES $BRAVE $DEVTOOLBOX $SIGNAL $SPOTIFY $WAREHOUSE $METADATACLEANER $EXTENSION $QBITTORENT $LUTRIS $HEROIC $NEWS $ZEN|| error_exit "Failed to install flatpak packages."

