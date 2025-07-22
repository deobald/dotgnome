#/usr/bin/env bash

# keyboard
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier', 'compose:ralt']"

# input sources
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'in+bolnagri')]"

# date/time
gsettings set org.gnome.desktop.datetime automatic-timezone true

# brightness
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false
gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.desktop.session idle-delay 0

