local function key(k, action, opts)
	hl.bind("SUPER + " .. k, action, opts)
end

-- Default apps
key("Return", hl.dsp.exec_cmd("kitty"))
key("E", hl.dsp.exec_cmd("thunar"))
key("B", hl.dsp.exec_cmd("brave-origin"))

-- Picker
--key("P", hl.dsp.exec_cmd("hyprpicker -a"))
