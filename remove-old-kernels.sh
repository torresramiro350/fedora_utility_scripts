#!/usr/bin/env bash

###############################################################################
# Script designed to clean up old installions of kernels for Fedora           #                                                                  
# Purpose: Fedora doesn't remove old installations of kernels by default and  #
# at every release, the list just becomes longer which is why this script     #
# exists. If there are not other kernels installed, it will simply print out  #
# no old kernels.                                                             #
###############################################################################

old_kernels=($(dnf repoquery --installonly --latest-limit=-1 -q))
if [ "${#old_kernels[@]}" -eq 0 ]; then
    echo "No old kernels found"
    exit 0
fi
if ! dnf remove "${old_kernels[@]}"; then
    echo "Failed to remove old kernels"
    exit 1
fi

echo "Removed old kernels"
exit 0
