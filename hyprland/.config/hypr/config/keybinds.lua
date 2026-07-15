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
alt("Space", hl.dsp.window.float({ action = "toggle" }))
key("F", hl.dsp.window.fullscreen())
key("J", hl.dsp.layout("togglesplit"))
alt("C", hl.dsp.exec_cmd(noct .. "panel-toggle session"))

-- Focus
key("Left", hl.dsp.focus({ direction = "left" }))
key("Right", hl.dsp.focus({ direction = "right" }))
key("Up", hl.dsp.focus({ direction = "up" }))
key("Down", hl.dsp.focus({ direction = "down" }))

hl.bind("ALT + Tab", hl.dsp.window.cycle_next())

-- Move windows
shift("Right", hl.dsp.window.move({ direction = "r" }))
shift("Left", hl.dsp.window.move({ direction = "l" }))
shift("Up", hl.dsp.window.move({ direction = "u" }))
shift("Down", hl.dsp.window.move({ direction = "d" }))

ctrl("SHIFT + Right", hl.dsp.window.move({ workspace = "r+1" }))
ctrl("SHIFT + Left", hl.dsp.window.move({ workspace = "r-1" }))

------------------
---- LAUNCHER ----
------------------

key("Return", hl.dsp.exec_cmd(launchPrefix .. TERMINAL))
key("E", hl.dsp.exec_cmd(launchPrefix .. FILE_MANAGER))
key("T", hl.dsp.exec_cmd(launchPrefix .. EDITOR))
key("B", hl.dsp.exec_cmd(launchPrefix .. BROWSER))

hl.bind("CONTROL + SHIFT + Escape", hl.dsp.exec_cmd(launchPrefix .. TERMINAL .. " -e htop"))

key("Z", hl.dsp.exec_cmd(noct .. "settings-toggle"))
key("X", hl.dsp.exec_cmd(noct .. "panel-toggle control-center"))
key("Space", hl.dsp.exec_cmd(noct .. "panel-toggle launcher"))

---------------------------
---- SCROLLING LAYOUT ----
---------------------------

key("period", hl.dsp.layout("move +col"))
key("comma", hl.dsp.layout("move -col"))
key("D", hl.dsp.layout("colresize +conf"))

-------------------
---- UTILITIES ----
-------------------

hl.bind("CONTROL + SHIFT + S", hl.dsp.exec_cmd(launchPrefix .. SCREENSHOT))

key("P", hl.dsp.exec_cmd("hyprpicker -a"))
key("R", hl.dsp.exec_cmd(noct .. "screenshot-region"))

shift("W", hl.dsp.exec_cmd(noct .. "panel-toggle wallpaper"))

key("V", hl.dsp.exec_cmd(noct .. "panel-toggle clipboard"))

key("N", hl.dsp.exec_cmd(noct .. "nightlight-toggle"))

--------------------
---- WORKSPACES ----
--------------------

for i = 1, 10 do
	local num = i % 10

	key(num, hl.dsp.focus({ workspace = i }))

	shift(num, hl.dsp.window.move({ workspace = i, follow = true }))

	alt(num, hl.dsp.window.move({ workspace = i, follow = false }))
end

hl.bind("CONTROL + ALT + Right", hl.dsp.focus({ workspace = "r+1" }))

hl.bind("CONTROL + ALT + Left", hl.dsp.focus({ workspace = "r-1" }))

ctrl("Down", hl.dsp.focus({ workspace = "empty" }))

hl.bind("CONTROL + ALT + Right", hl.dsp.window.move({ workspace = "r+1" }))

hl.bind("CONTROL + ALT + Left", hl.dsp.window.move({ workspace = "r-1" }))

-----------------------
---- NOTIFICATIONS ----
-----------------------

key("A", hl.dsp.exec_cmd(noct .. "panel-toggle control-center notifications"))
