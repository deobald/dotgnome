#/usr/bin/env bash

# keyboard
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier', 'compose:ralt']"

# input sources
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'in+bolnagri')]"

# date/time
gsettings set org.gnome.desktop.datetime automatic-timezone true

