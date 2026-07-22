-- Hyprland Configuration

require("config.auto-monitors")
require("config.animations")
require("config.autostart")
require("config.colors")
require("config.decorations")
require("config.defaults")
require("config.environment")
require("config.input")
require("config.binds")
require("config.misc")
require("config.scrolling")
require("config.monitors")
require("config.windowrules")
require("config.workspaces")

-- This loads Noctalia-generated Hyprland colors.
dofile("/home/pedro/.config/hypr/noctalia/noctalia-colors.lua")

-- For Noctalia Color templates
require("noctalia").apply_theme()
