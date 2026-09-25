-- Local calls
local noct = "noctalia msg "

-- Sound and brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(noct .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(noct .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(noct .. "volume-mute"))

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(noct .. "brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(noct .. "brightness-down"))
