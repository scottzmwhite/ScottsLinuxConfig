KERNEL=kernel7
sudo cp $HOME/projects/linux/arch/arm/boot/dts/*.dtb /boot/
sudo cp $HOME/projects/linux/arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/
sudo cp $HOME/projects/linux/arch/arm/boot/dts/overlays/README /boot/overlays/
sudo cp $HOME/projects/linux/arch/arm/boot/dts/*.dtb /boot/
sudo cp $HOME/projects/linux/arch/arm/boot/zImage /boot/${KERNEL}.img
