deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

DONE_FLASHING  = 'After flashing is completed, please wait until the board is rebooted'
module.exports =
	version: 1
	slug: 'jetson-orin-nano-8gb-forecr'
	name: 'Nvidia Jetson Orin Nano 8GB in ForeCR DSBOARD-ORNX-LAN'
	arch: 'aarch64'
	state: 'released'

	instructions: [
		DONE_FLASHING
	]

	gettingStartedLink:
		windows: ''
		osx: ''
		linux: ''

	supportsBlink: false

	yocto:
		machine: 'jetson-orin-nano-8gb-forecr'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-kirkstone'
		deployArtifact: 'balena-image-flasher-jetson-orin-nano-8gb-forecr.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
