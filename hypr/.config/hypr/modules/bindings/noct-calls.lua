-- Local calls
local noct = "noctalia msg "

local function key(k, action, opts)
	hl.bind("SUPER + " .. k, action, opts)
end

local function shift(k, action, opts)
	hl.bind("SUPER + SHIFT + " .. k, action, opts)
end

local function alt(k, action, opts)
	hl.bind("SUPER + ALT + " .. k, action, opts)
end

-- Window Switcher
hl.bind("ALT + TAB", hl.dsp.exec_cmd("noctalia msg window-switcher"))

-- Settings and panel
key("A", hl.dsp.exec_cmd(noct .. "panel-toggle control-center notifications"))
key("Z", hl.dsp.exec_cmd(noct .. "settings-toggle"))
key("X", hl.dsp.exec_cmd(noct .. "panel-toggle control-center"))
key("D", hl.dsp.exec_cmd(noct .. "panel-toggle launcher"))
shift("W", hl.dsp.exec_cmd(noct .. "panel-toggle wallpaper"))
key("V", hl.dsp.exec_cmd(noct .. "panel-toggle clipboard"))

key("R", hl.dsp.exec_cmd(noct .. "screenshot-region"))

-- Nightlight
key("N", hl.dsp.exec_cmd(noct .. "nightlight-enable"))
alt("N", hl.dsp.exec_cmd(noct .. "nightlight-disable"))

-- Session
alt("C", hl.dsp.exec_cmd(noct .. "panel-toggle session"))
