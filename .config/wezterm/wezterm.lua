local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 19

-- color scheme
config.color_scheme = "Kanagawa (Gogh)"

-- appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.bold_brightens_ansi_colors = false

-- performance

config.max_fps = 120
config.animation_fps = 120
config.enable_wayland = true

-- start maximized
wezterm.on("gui-startup", function(cmd)
	local _, _, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
