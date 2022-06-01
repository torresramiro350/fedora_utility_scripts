#!/usr/bin/bash

# simple script to carry the upgrade process for Fedora

# update system and remove obsolete packages
sudo dnf upgrade --refresh
sudo dnf autoremove

# Configure DNF speed and mirrors
sudo dnf install dnf-plugins-core

# Upgrade from current to next version, in this case 36
sudo dnf install dnf-plugin-system-upgrade -y

sudo dnf system-upgrade download --releasever=36

# there are situations where this fails, and will add solutions
#  for those cases later... But for now, assuming that everything
# has worked

# finally reboot to implement upgrades (time to grab a snack :happy)
sudo dnf system-upgrade reboot
