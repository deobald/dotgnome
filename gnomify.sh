#/usr/bin/env bash

# mouse
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true

# keyboard
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier', 'compose:ralt']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Primary><Alt>space']"

# keyboard: super+space (the only sane key combo for a quick launcher)
gsettings set org.gnome.mutter overlay-key ''
gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>Space']"

# gui
gsettings set org.gnome.desktop.interface show-battery-percentage true

# fractional scaling (175%, etc.)
# gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
gsettings reset org.gnome.mutter experimental-features

# input sources
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'in+bolnagri')]"

# date/time
gsettings set org.gnome.desktop.datetime automatic-timezone true

# evolution - sane reply threading
gsettings set org.gnome.evolution.mail composer-localized-re "AW,SV,Odg"
# evolution - sane colours, styles
gsettings set org.gnome.evolution.mail preview-unset-html-colors true
gsettings set org.gnome.evolution.mail composer-inherit-theme-colors true
gsettings set org.gnome.evolution.mail composer-mode 'markdown-html'

export DISTRO=$(awk -F= '/^NAME/{print $2}' /etc/os-release)
printf "Distro is ${DISTRO}\n"
if [[ "$DISTRO" == "\"Debian GNU/Linux\"" ]]; then
  printf "Detected Debian. No Ubuntu-specific changes applied.\n"
elif [[ "$DISTRO" == "Ubuntu" ]]; then
  printf "Detected Ubuntu. Applying Ubuntu-specific changes...\n"
  ./gnomify-ubuntu.sh
fi

