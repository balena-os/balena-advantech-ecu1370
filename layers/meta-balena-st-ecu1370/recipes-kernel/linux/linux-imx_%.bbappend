inherit kernel-balena

BALENA_CONFIGS:append = " imx-sdma "
BALENA_CONFIGS[imx-sdma] = " \
	CONFIG_IMX_SDMA=m \
	CONFIG_EFI_STUB=n \
	CONFIG_EFI=n \
"
