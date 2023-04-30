#!/bin/bash


# switch into integrated graphics
enable_integrated_graphics() {
    echo "Switching into integrated graphics on next reboot"
    sudo grubby --update-kernel=ALL --remove-args="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau nvidia-drm.modeset=1"
}

# activate the discrete GPU graphics
enable_discrete_graphics() {
    echo "Switching into discrete graphics on next reboot"
    sudo grubby --update-kernel=ALL --args="rd.driver.blacklist=nouveau modprobe.blacklist=nouveau nvidia-drm.modeset=1"
}

if [[ $1 -eq 0 ]]; then
    enable_integrated_graphics
elif [[ $1 -eq 1 ]]; then
    enable_discrete_graphics
fi
