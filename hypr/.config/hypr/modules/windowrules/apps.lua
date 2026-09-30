-- Centered apps
local centeredApps = "^(org.gnome.FileRoller|nwg-look|qt6ct|xdg-desktop-portal-gtk)$"

hl.window_rule({ match = { float = true }, move = "50% 50%" })
hl.window_rule({
	match = { class = centeredApps },
	float = true,
	center = true,
	size = { 700, 450 },
})

-- Noctalia Settings
hl.window_rule({
	name = "floating-noctalia-settings",
	match = { initial_class = [[^dev\.noctalia\.Noctalia$]] },
	float = true,
	center = true,
	size = { "monitor_w * 0.9", "monitor_h * 0.9" },
})

-- Pinentry and mpv
hl.window_rule({
	name = "floating-simple",
	match = { initial_class = "^(Pinentry-gtk|mpv)$" },
	float = true,
})

-- KDE Connect and Localsend
hl.window_rule({ match = { class = "^org.kde.kdeconnect.app$" }, opacity = 0.65 })

hl.window_rule({
	name = "floating-kdeconnect-localsend",
	match = { initial_class = [[^(org\.kde\.kdeconnect\.app|org\.localsend\.localsend_app)$]] },
	float = true,
	center = true,
	size = { "monitor_w * 0.3", "monitor_h * 0.7" },
})

-- Picture-in-Picture
hl.window_rule({
	match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
	float = true,
	keep_aspect_ratio = true,
	move = "73% 72%",
	size = "25% 25%",
	pin = true,
})
