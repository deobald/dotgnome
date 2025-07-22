#!/usr/bin/env bash

# flatpak
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "You will need to reboot before the flatpak binaries are on the path."
echo "(Press <enter> to continue.)"
rebooten=""
read rebooten

# fonts
sudo apt install fonts-firacode
sudo apt install fonts-inconsolata

# cli
sudo apt install tree
sudo apt install curl

