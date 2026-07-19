local colors = require("config.colors")

hl.config({
	general = {
		layout = "scrolling",
		gaps_in = 10,
		gaps_out = 10,
		border_size = 3,
		--extend_border_grab_area = 10,
		--resize_on_border = true,

		col = {
			active_border = {
				colors = { colors.primary, colors.secondary },
				angle = 45,
			},
			inactive_border = colors.surface,
		},
	},

	scrolling = {
		column_width = 0.5,
		direction = "right",
	},

	group = {
		col = {
			border_active = colors.secondary,
			border_inactive = colors.surface,
			border_locked_active = colors.error,
			border_locked_inactive = colors.surface,
		},

		groupbar = {
			col = {
				active = colors.secondary,
				inactive = colors.surface,
				locked_active = colors.error,
				locked_inactive = colors.surface,
			},
		},
	},

	decoration = {
		--dim_special = 0.3,
		rounding = 0,
		active_opacity = 1,
		inactive_opacity = 0.9,
		fullscreen_opacity = 1,

		blur = {
			size = 20,
			passes = 3,
			xray = true,
			special = true,
			vibrancy = 0.2696,
		},
	},
})
