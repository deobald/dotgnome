#/usr/bin/env bash

# mouse
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true

# keyboard
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Primary><Alt>space']"

# keyboard: super+space (the only sane key combo for a quick launcher)
gsettings set org.gnome.mutter overlay-key ''
gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>Space']"

# gui
gsettings set org.gnome.desktop.interface show-battery-percentage true

# fractional scaling (175%, etc.)
# gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
gsettings reset org.gnome.mutter experimental-features

# hide the stupid dock
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

# date/time
gsettings set org.gnome.desktop.datetime automatic-timezone true

# evolution - sane reply threading
gsettings set org.gnome.evolution.mail composer-localized-re "AW,SV,Odg"
# evolution - sane colours, styles
gsettings set org.gnome.evolution.mail preview-unset-html-colors true
gsettings set org.gnome.evolution.mail composer-inherit-theme-colors true
gsettings set org.gnome.evolution.mail composer-mode 'markdown-html'
