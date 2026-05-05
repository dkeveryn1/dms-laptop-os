# Sets up the Dark Matter GRUB theme in the persistent boot partition
setup-grub-theme:
    @echo "Copying Dark Matter theme to /boot..."
    sudo mkdir -p /boot/grub2/themes/darkmatter
    sudo cp -r /usr/share/grub/themes/darkmatter/* /boot/grub2/themes/darkmatter/
    @echo "Theme copied successfully."
    @echo ""
    @echo "⚠️ ACTION REQUIRED: To finalize GRUB, you must bypass composefs."
    @echo "1. Run: sudo rpm-ostree kargs --append=ostree.prepare-root.composefs=0"
    @echo "2. Reboot your machine."
    @echo "3. Run: sudo grub2-mkconfig -o /boot/grub2/grub.cfg"
    @echo "4. Run: sudo rpm-ostree kargs --delete-if-present=ostree.prepare-root.composefs=0"
    @echo "5. Reboot one final time."
