local home = os.getenv("HOME")

package.path = package.path
  .. ";" .. home .. "/.config/hypr/?.lua"
  .. ";" .. home .. "/.config/hypr/?/init.lua"

-- Hyprland Configuration

-- Bindings
require("./config/bindings/*")

-- Rules
require("./config/rules/*")

-- General
require("config.animations")
require("config.autostart")
require("config.colors")
require("config.decorations")
require("config.env")
require("config.input")
require("config.misc")
require("config.scrolling")
require("config.workspaces")

-- This loads Noctalia-generated Hyprland colors.
dofile("/home/pedro/.config/hypr/noctalia/noctalia-colors.lua")

-- For Noctalia Color templates
require("noctalia").apply_theme()
