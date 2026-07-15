-- Montior wiki https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
	output = "HDMI-A-1",
	mode = "preferred",
	position = "0x0",
	scale = 1,
	icc = "/home/pedro/.local/share/icc/edid-263a4f42b4ec83145a521934d747f82b.icc",
	bitdepth = 8,
})

hl.monitor({
	output = "eDP-1",
	mode = "preferred",
	position = "auto",
	scale = 1.25,
	icc = "/home/pedro/.local/share/icc/edid-52036e7bf5f00ef980de0a9944c5c6f0.icc",
	bitdepth = 8,
})

hl.monitor({
	output = "eDP-2",
	mode = "preferred",
	position = "auto",
	scale = 1.25,
	icc = "/home/pedro/.local/share/icc/edid-52036e7bf5f00ef980de0a9944c5c6f0.icc",
	bitdepth = 8,
})
