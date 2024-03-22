FILESEXTRAPATHS:append := "${THISDIR}/${PN}"

INTERNAL_DEVICE_KERNEL = "mmcblk0"

SRC_URI += " file://switch_to_halt.patch"
