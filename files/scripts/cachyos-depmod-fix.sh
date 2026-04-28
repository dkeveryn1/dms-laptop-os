#!/bin/bash
# Force depmod to run before 05-rpmostree.install executes dracut
mkdir -p /etc/kernel/install.d/

cat << 'EOF' > /etc/kernel/install.d/01-depmod-cachyos.install
#!/bin/bash
if [[ "$1" == "add" ]]; then
    depmod -a "$2"
fi
EOF

chmod +x /etc/kernel/install.d/01-depmod-cachyos.install
