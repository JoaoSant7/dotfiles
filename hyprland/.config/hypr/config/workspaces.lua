for i = 1, 4 do
	hl.workspace_rule({
		workspace = tostring(i),
		monitor = "HDMI-A-1",
		persistent = true,
		default = (i == 1),
	})
end
