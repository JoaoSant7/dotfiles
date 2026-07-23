local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- startup shell
--config.default_prog = { "/usr/bin/zsh", "-l" }

-- font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 19
config.line_height = 1.0

-- colors
config.color_scheme = "Kanagawa Dragon (Gogh)"

-- appearance
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true
config.bold_brightens_ansi_colors = true

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- performance
config.front_end = "OpenGL"
config.prefer_egl = true

-- IMPORTANT:
-- config.enable_wayland = true

-- reduce rendering overhead
config.animation_fps = 1
config.cursor_blink_rate = 0

-- startup
wezterm.on("gui-startup", function(cmd)
	local _, _, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
