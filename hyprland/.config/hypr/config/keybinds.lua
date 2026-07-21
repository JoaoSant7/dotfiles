-- Local calls
local noct = "noctalia msg "
local launchPrefix = "uwsm app -- "

local function key(k, action, opts)
	hl.bind("SUPER + " .. k, action, opts)
end

local function shift(k, action, opts)
	hl.bind("SUPER + SHIFT + " .. k, action, opts)
end

local function ctrl(k, action, opts)
	hl.bind("SUPER + CONTROL + " .. k, action, opts)
end

local function alt(k, action, opts)
	hl.bind("SUPER + ALT + " .. k, action, opts)
end

---------------------------
---- WINDOW MANAGEMENT ----
---------------------------

key("Escape", hl.dsp.exec_cmd("hyprctl kill"))
key("Q", hl.dsp.window.close())
alt("T", hl.dsp.window.float({ action = "toggle" }))
key("F", hl.dsp.window.fullscreen())
alt("C", hl.dsp.exec_cmd(noct .. "panel-toggle session"))

-- Focus movement (vim keys)
key("h", hl.dsp.focus({ direction = "left" }))
key("l", hl.dsp.focus({ direction = "right" }))
key("k", hl.dsp.focus({ direction = "up" }))
key("j", hl.dsp.focus({ direction = "down" }))

hl.bind("ALT + Tab", hl.dsp.window.cycle_next())

-- Move windows
shift("h", hl.dsp.window.move({ direction = "l" }))
shift("l", hl.dsp.window.move({ direction = "r" }))
shift("k", hl.dsp.window.move({ direction = "u" }))
shift("j", hl.dsp.window.move({ direction = "d" }))

-- Move windows to right and left workspaces
ctrl("l", hl.dsp.window.move({ workspace = "r+1" }))
ctrl("h", hl.dsp.window.move({ workspace = "r-1" }))

------------------
---- LAUNCHER ----
------------------

key("Return", hl.dsp.exec_cmd(launchPrefix .. TERMINAL))
key("E", hl.dsp.exec_cmd(launchPrefix .. FILE_MANAGER))
key("T", hl.dsp.exec_cmd(launchPrefix .. EDITOR))
key("B", hl.dsp.exec_cmd(launchPrefix .. BROWSER))

key("Z", hl.dsp.exec_cmd(noct .. "settings-toggle"))
key("X", hl.dsp.exec_cmd(noct .. "panel-toggle control-center"))
key("D", hl.dsp.exec_cmd(noct .. "panel-toggle launcher"))

---------------------------
---- SCROLLING LAYOUT ----
---------------------------

key("period", hl.dsp.layout("move +col"))
key("comma", hl.dsp.layout("move -col"))
key("M", hl.dsp.layout("colresize +conf"))

-------------------
---- UTILITIES ----
-------------------

hl.bind("CONTROL + SHIFT + S", hl.dsp.exec_cmd(launchPrefix .. SCREENSHOT))

key("P", hl.dsp.exec_cmd("hyprpicker -a"))

key("R", hl.dsp.exec_cmd(noct .. "screenshot-region"))

shift("W", hl.dsp.exec_cmd(noct .. "panel-toggle wallpaper"))

key("V", hl.dsp.exec_cmd(noct .. "panel-toggle clipboard"))

key("N", hl.dsp.exec_cmd(noct .. "nightlight-toggle"))

-----------------
---- MEDIA ----
-----------------

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(noct .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(noct .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(noct .. "volume-mute"))

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(noct .. "brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(noct .. "brightness-down"))

--------------------
---- WORKSPACES ----
--------------------

for i = 1, 10 do
	local num = i % 10

	key(num, hl.dsp.focus({ workspace = i }))

	shift(num, hl.dsp.window.move({ workspace = i, follow = true }))

	alt(num, hl.dsp.window.move({ workspace = i, follow = false }))
end

-- Switch between workspaces (vim keys)
hl.bind("CONTROL + ALT + l", hl.dsp.focus({ workspace = "r+1" }))
hl.bind("CONTROL + ALT + h", hl.dsp.focus({ workspace = "r-1" }))

-- Go to an empty workspace
ctrl("Down", hl.dsp.focus({ workspace = "empty" }))

-----------------------
---- NOTIFICATIONS ----
-----------------------

key("A", hl.dsp.exec_cmd(noct .. "panel-toggle control-center notifications"))
