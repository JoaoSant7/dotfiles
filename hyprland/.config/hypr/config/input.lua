-- Input configuration

hl.config({
	input = {
		accel_profile = "flat",

		repeat_delay = 200,
		repeat_rate = 40,

		kb_layout = "us,br",
		kb_variant = "altgr-intl", -- Enforces standard dead keys (', ~, ^, `, ")
		kb_options = "grp:win_space_toggle,compose:ralt",
	},
})

hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down", action = "close" })
hl.gesture({ fingers = 3, direction = "up", action = "fullscreen" })
hl.gesture({ fingers = 3, direction = "left", action = "float" })
