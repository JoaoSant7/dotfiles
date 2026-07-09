hl.config({
	dwindle = {
		preserve_split = true,
	},
	scrolling = {
		column_width = 0.6,
		fullscreen_on_one_column = true,
		focus_fit_method = 0, -- 0 = center, 1 = fit
		follow_focus = true,
		follow_min_visible = 0.4,
		explicit_column_widths = "0.6, 1.0",
		direction = "right",
	},
	misc = {
		col = {
			splash = "0xff95C561",
		},
		disable_splash_rendering = true,
		middle_click_paste = false,
		enable_swallow = true,
		swallow_regex = "(kitty|ghostty|[Kk]onsole|Alacritty|gnome-terminal|xfce[0-9]?-terminal)",
		vrr = 3,

		-- Startup wallpaper
		force_default_wallpaper = 0,
	},
	xwayland = {
		force_zero_scaling = true,
	},
	ecosystem = {
		no_update_news = true,
		no_donation_nag = true,
	},
})
