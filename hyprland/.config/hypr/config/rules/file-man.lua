-- File Roller
hl.window_rule({
  name = "floating-filerroller-extract",
  match = { initial_class = [[^org\.gnome\.FileRoller$]], initial_title = "^Extract" },
  float = true,
})

-- Thunar
-- 1. Every Thunar window (dialogs): small, floating, centered
hl.window_rule({
    name   = "thunar-dialogs",
    match  = { class = "^(thunar)$" },
    float  = true,
    center = true,
    size   = { "monitor_w * 0.4", "monitor_h * 0.5" },
})

-- 2. Main window only (title ends in "Thunar"): big, overrides the size above
hl.window_rule({
    name   = "thunar-main",
    match  = { class = "^(thunar)$", title = "^(.*Thunar)$" },
    float  = true,
    center = true,
    size   = { "monitor_w * 0.7", "monitor_h * 0.9" },
})

-- 3. Rename dialog: even smaller, since it's just one text field
hl.window_rule({
    name   = "thunar-rename",
    match  = { class = "^(thunar)$", title = "^(Rename).*" },
    float  = true,
    center = true,
    size   = { "monitor_w * 0.25", "monitor_h * 0.2" },
})
