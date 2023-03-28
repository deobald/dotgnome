#/usr/bin/env bash

# mouse
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true

# keyboard
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier']"

# gui
gsettings set org.gnome.desktop.interface show-battery-percentage true

# hide the stupid dock
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

# super+space is the only sane key combo for a quick launcher
gsettings set org.gnome.mutter overlay-key ''
gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s', '<Super>Space']"

# date/time
gsettings set org.gnome.desktop.datetime automatic-timezone true

