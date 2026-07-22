-- Picture-in-Picture
hl.window_rule({
	match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
	float = true,
	keep_aspect_ratio = true,
	move = "73% 72%",
	size = "25% 25%",
	pin = true,
})

-- Function apps

local centeredApps = "^(org.gnome.FileRoller|nwg-look|qt6ct)$"

hl.window_rule({ match = { float = true }, move = "50% 50%" })

hl.window_rule({
	match = { class = centeredApps },
	float = true,
	center = true,
	size = { 700, 450 },
})

-- Gaming
local gamingApps = "^(steam_app.*|gamescope)$"
local gamingWorkspace = "name:gaming"

hl.window_rule({ match = { content = "game" }, workspace = gamingWorkspace })
hl.window_rule({ match = { class = gamingApps }, workspace = gamingWorkspace })
hl.window_rule({ match = { class = "^(steam)$", title = "^(Friends List)$" }, float = true })
hl.window_rule({
	match = {
		class = "^(steam)$",
		title = "^(Launching\\.{3})$",
	},
	float = true,
	center = true,
	workspace = gamingWorkspace,
})
hl.window_rule({
	match = {
		class = gamingApps,
		title = "^(.+)$",
		initial_title = "negative:^(.*\\\\home\\\\.*)$",
	},
	size = "monitor_w monitor_h",
	fullscreen_state = 2,
	content = "game",
})
hl.window_rule({
	match = {
		class = "^(steam_app.*)$",
		initial_title = "^$",
	},
	float = true,
	center = true,
	fullscreen = false,
	fullscreen_state = 0,
})

-- Apps
local primaryWorkspace = 1

hl.window_rule({
	match = { class = "^(.*\\.exe)$", float = true },
	primaryWorkspace,
	center = true,
	fullscreen_state = 0,
})

hl.window_rule({ match = { class = "^(vesktop|discord)$" }, primaryWorkspace })

-- Float Utility Windows
local floatApps = {
	{ class = "^(org.pulseaudio.pavucontrol|blueman-manager|nm-applet|nm-connection-editor)$" },
	{ title = "^(Winetricks.*|Protontricks.*)$" },
}
for _, m in ipairs(floatApps) do
	hl.window_rule({ match = m, float = true })
end

-- Float Common Modals
local modalMatches = {
	{
		title = "^(Open|Authentication Required|Add Folder to Workspace|Choose Files|Save As|Confirm to replace files|File Operation Progress)$",
	},
	{ initial_title = "^(Open File)$" },
	{ class = "^([Xx]dg-desktop-portal-gtk)$" },
	{ title = "^(File Upload|Choose wallpaper|Library)(.*)$" },
	{ class = "^(.*dialog.*)$" },
	{ title = "^(.*dialog.*)$" },
	{ class = "^(hyprland-share-picker)$" },
}
for _, m in ipairs(modalMatches) do
	hl.window_rule({ match = m, float = true })
end

-- Ignore maximize requests from all apps. You'll probably like this.
local suppressMaximizeRule = hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
suppressMaximizeRule:set_enabled(false)

-- Fix some dragging issues with XWayland
hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})
