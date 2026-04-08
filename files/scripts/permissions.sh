#!/usr/bin/env bash

chmod +x /usr/etc/skel/.config/hypr/scripts/quickshell/network/bluetooth_panel_logic.sh
chmod +x /usr/etc/skel/.config/hypr/scripts/quickshell/network/wifi_panel_logic.sh

# --- Fix Nemo's Name and Icon ---
# Replace 'Name=Files' with 'Name=Nemo'
sed -i 's/^Name=Files/Name=Nemo/' /usr/share/applications/nemo.desktop

# Replace generic folder icon with the specific Nemo icon
sed -i 's/^Icon=system-file-manager/Icon=nemo/' /usr/share/applications/nemo.desktop
