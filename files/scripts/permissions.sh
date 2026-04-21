#!/usr/bin/env bash

chmod +x /usr/etc/skel/.config/hypr/scripts/power-manager.sh
chmod +x /usr/etc/skel/.config/quickshell/network/*.sh

# --- Fix Nemo's Name and Icon ---
# Replace 'Name=Files' with 'Name=Nemo'
sed -i 's/^Name=Files/Name=Nemo/' /usr/share/applications/nemo.desktop

# Replace generic folder icon with the specific Nemo icon
sed -i 's/^Icon=system-file-manager/Icon=nemo/' /usr/share/applications/nemo.desktop

# Create the root mount point for the Nix package manager
mkdir -p /nix
chmod 0755 /nix
chmod 755 /usr/lib64/libfprint-2/tod-1/libfprint-tod-goodix-53xc-0.0.4.so
