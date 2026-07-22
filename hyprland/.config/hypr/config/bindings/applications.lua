local launchPrefix = "uwsm app -- "

local function key(k, action, opts)
	hl.bind("SUPER + " .. k, action, opts)
end

-- Default apps
key("Return", hl.dsp.exec_cmd(launchPrefix .. TERMINAL))
key("E", hl.dsp.exec_cmd(launchPrefix .. FILE_MANAGER))
key("T", hl.dsp.exec_cmd(launchPrefix .. EDITOR))
key("B", hl.dsp.exec_cmd(launchPrefix .. BROWSER))
hl.bind("CONTROL + SHIFT + S", hl.dsp.exec_cmd(launchPrefix .. SCREENSHOT))

-- Picker
key("P", hl.dsp.exec_cmd("hyprpicker -a"))
