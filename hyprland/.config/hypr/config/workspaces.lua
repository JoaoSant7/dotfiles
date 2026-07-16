for i = 1, 4 do
	hl.workspace_rule({
		workspace = tostring(i),
		persistent = true,
		default = (i == 1),
	})
end
