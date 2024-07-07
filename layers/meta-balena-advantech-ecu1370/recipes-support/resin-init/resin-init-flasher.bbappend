FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

INTERNAL_DEVICE_KERNEL = "mmcblk0"

RDEPENDS:${PN} += "os-helpers-power"
