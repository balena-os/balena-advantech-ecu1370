FILESEXTRAPATHS:append := ":${THISDIR}/${BPN}"

SRC_URI:append = "file://os-helpers-power"

PACKAGES:append = "${PN}-power"

do_install:append() {
	install -m 0775 ${WORKDIR}/os-helpers-power ${D}${libexecdir}
}

FILES:${PN}-power = "${libexecdir}/os-helpers-power"
