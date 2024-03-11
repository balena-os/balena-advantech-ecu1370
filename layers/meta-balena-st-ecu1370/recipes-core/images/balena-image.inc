# Remove unneeded package installed by the BSP (since we use the kernel image
# with the initramfs embedded instead) which also makes the balena-image
# target unbuildable
IMAGE_INSTALL:remove = " kernel-image"

# increase the rootfs partition size
IMAGE_ROOTFS_SIZE="430080"

DEPENDS += "imx-boot"

BALENA_BOOT_PARTITION_FILES = "imx-boot-${MACHINE}-sd.bin-flash_evk:/imx-boot.bin"

IMAGE_CMD:balenaos-img:append () {
    dd if=${DEPLOY_DIR_IMAGE}/imx-boot-${MACHINE}-sd.bin-flash_evk of=${BALENA_RAW_IMG} conv=notrunc seek=33 bs=1K
}

IMAGE_INSTALL:append = " linux-firmware-imx-sdma-imx7d "
