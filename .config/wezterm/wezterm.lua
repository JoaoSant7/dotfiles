local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 17

-- custom color scheme
config.color_schemes = {
	["gruvbox_material_dark_medium"] = {
		foreground = "#D4BE98",
		background = "#282828",

		cursor_bg = "#D4BE98",
		cursor_border = "#D4BE98",
		cursor_fg = "#282828",

		selection_bg = "#D4BE98",
		selection_fg = "#45403d",

		ansi = {
			"#282828",
			"#ea6962",
			"#a9b665",
			"#d8a657",
			"#7daea3",
			"#d3869b",
			"#89b482",
			"#d4be98",
		},
		brights = {
			"#eddeb5",
			"#ea6962",
			"#a9b665",
			"#d8a657",
			"#7daea3",
			"#d3869b",
			"#89b482",
			"#d4be98",
		},
	},
}

-- use the custom theme
config.color_scheme = "gruvbox_material_dark_medium"

-- appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.bold_brightens_ansi_colors = false

-- performance

config.max_fps = 120
config.animation_fps = 1
config.enable_wayland = true
config.prefer_egl = true

-- start maximized (correct WezTerm way)
wezterm.on("gui-startup", function(cmd)
	local _, _, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
