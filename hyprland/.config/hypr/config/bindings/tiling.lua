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

key("Escape", hl.dsp.exec_cmd("hyprctl kill"))
key("Q", hl.dsp.window.close())
alt("T", hl.dsp.window.float({ action = "toggle" }))
key("F", hl.dsp.window.fullscreen())

-- Focus movement (vim keys)
key("h", hl.dsp.focus({ direction = "left" }))
key("l", hl.dsp.focus({ direction = "right" }))
key("k", hl.dsp.focus({ direction = "up" }))
key("j", hl.dsp.focus({ direction = "down" }))

-- Cycle
hl.bind("ALT + Tab", hl.dsp.window.cycle_next())

-- Columns
key("period", hl.dsp.layout("move +col"))
key("comma", hl.dsp.layout("move -col"))
key("M", hl.dsp.layout("colresize +conf"))

-- Move windows
shift("h", hl.dsp.window.move({ direction = "l" }))
shift("l", hl.dsp.window.move({ direction = "r" }))
shift("k", hl.dsp.window.move({ direction = "u" }))
shift("j", hl.dsp.window.move({ direction = "d" }))

-- Resize windows
ctrl("h", hl.dsp.window.resize({ x = -20, y = 0, relative = true }), { repeating = true })
ctrl("l", hl.dsp.window.resize({ x = 20, y = 0, relative = true }), { repeating = true })
ctrl("j", hl.dsp.window.resize({ x = 0, y = -20, relative = true }), { repeating = true })
ctrl("k", hl.dsp.window.resize({ x = 0, y = 20, relative = true }), { repeating = true })

-- Workspaces
for i = 1, 10 do
	local num = i % 10

	key(num, hl.dsp.focus({ workspace = i }))

	shift(num, hl.dsp.window.move({ workspace = i, follow = true }))

	alt(num, hl.dsp.window.move({ workspace = i, follow = false }))
end

-- Move windows to right and left workspaces
--ctrl("l", hl.dsp.window.move({ workspace = "r+1" }))
--ctrl("h", hl.dsp.window.move({ workspace = "r-1" }))

-- Switch between workspaces (vim keys)
hl.bind("CONTROL + ALT + l", hl.dsp.focus({ workspace = "r+1" }))
hl.bind("CONTROL + ALT + h", hl.dsp.focus({ workspace = "r-1" }))
