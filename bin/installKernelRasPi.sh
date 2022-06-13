# Filename: installKernelRasPi.sh
# Description: install custom kernel build on raspberry pi

KERNEL=kernel7

# Install the kernel modules
cd $HOME/projects/linux && sudo make modules_install

# Copy the kernel and device tree to the boot directory
sudo cp $HOME/projects/linux/arch/arm/boot/dts/*.dtb /boot/
sudo cp $HOME/projects/linux/arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/
sudo cp $HOME/projects/linux/arch/arm/boot/dts/overlays/README /boot/overlays/
sudo cp $HOME/projects/linux/arch/arm/boot/dts/*.dtb /boot/
sudo cp $HOME/projects/linux/arch/arm/boot/zImage /boot/${KERNEL}.img
