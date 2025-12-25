# Boot script for Airoha EN7581 platform
# Supports XG-040G-MD and similar devices

# Set boot arguments
setenv bootargs "root=/dev/mmcblk0p1 rootwait rootfstype=ext4 console=ttyS0,115200n8 console=tty0"

# Load kernel and device tree
load mmc 0:1 ${kernel_addr_r} /boot/Image
load mmc 0:1 ${fdt_addr_r} /boot/dtb/airoha/en7581-xg-040g-md.dtb

# Boot the kernel
booti ${kernel_addr_r} - ${fdt_addr_r}
