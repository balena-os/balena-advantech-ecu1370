FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

inherit resin-u-boot

SRC_URI += " \
  file://0001-Revert-env-add-ENV_ERASE_PTR-macro.patch \
  file://0002_Restore_autoboot_c.patch \
  file://0003_integrate_with_balena-u-boot_environment.patch \
"
