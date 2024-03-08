deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

SWITCH_SD = "Switch SW2 to 1: OFF, 2: ON. Insert SD card and power on the board."
SWITCH_FLASH = "Switch SW2 to 1: ON, 2: OFF and power on the board."
 
postProvisioningInstructions = [
        instructions.BOARD_SHUTDOWN
        instructions.REMOVE_INSTALL_MEDIA
        SWITCH_FLASH
        instructions.BOARD_REPOWER
]
 
module.exports =
        version: 1
        slug: 'advantech-ecu1370'
        name: 'Advantech ECU-1370'
        arch: 'aarch64'
        state: 'released'
 
        stateInstructions:
                postProvisioning: postProvisioningInstructions
 
        instructions: [
                instructions.ETCHER_SD
                instructions.FLASHER_WARNING
                SWITCH_SD
        ].concat(postProvisioningInstructions)

        gettingStartedLink:
                windows: 'http://docs.balena.io/iot-gate-imx8/nodejs/getting-started/#adding-your-first-device'
                osx: 'http://docs.balena.io/iot-gate-imx8/getting-started/#adding-your-first-device'
                linux: 'http://docs.balena.io/iot-gate-imx8/getting-started/#adding-your-first-device'

        supportsBlink: false

        yocto:
                machine: 'st-ecu1370'
                image: 'balena-image-flasher'
                fstype: 'balenaos-img'
                version: 'yocto-kirkstone'
                deployArtifact: 'balena-image-flasher-imx8mq-ecu1370.balenaos-img'
                compressed: true

        options: [ networkOptions.group ]

        configuration:
                config:
                        partition:
                                primary: 1
                        path: '/config.json'

        initialization: commonImg.initialization
