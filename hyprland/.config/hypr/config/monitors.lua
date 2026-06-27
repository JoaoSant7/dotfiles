-- Montior wiki https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
	output = "HDMI-A-1",
	mode = "preferred",
	position = "0x0",
	scale = "1",
})

hl.monitor({
	output = "eDP-1",
	disabled = true,
})
