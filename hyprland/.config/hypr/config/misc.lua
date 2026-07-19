hl.config({
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
