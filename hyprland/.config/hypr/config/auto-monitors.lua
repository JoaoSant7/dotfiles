-- Auto-switch between laptop and external monitor.
-- If HDMI-A-1 is connected, disable eDP-1.
-- Otherwise, restore eDP-1.

local INTERNAL = "eDP-1"
local EXTERNAL = "HDMI-A-1"

local function has_external()
	for _, monitor in ipairs(hl.get_monitors() or {}) do
		if monitor.name == EXTERNAL then
			return true
		end
	end

	return false
end

local function apply()
	if has_external() then
		hl.monitor({
			output = INTERNAL,
			disabled = true,
		})
	else
		hl.monitor({
			output = INTERNAL,
			mode = "preferred",
			position = "0x0",
			scale = 1.25,
			icc = "/home/pedro/.local/share/icc/edid-52036e7bf5f00ef980de0a9944c5c6f0.icc",
			bitdepth = 8,
		})
	end
end

hl.on("hyprland.start", apply)
hl.on("monitor.added", apply)
hl.on("monitor.removed", apply)
hl.on("config.reloaded", apply)
