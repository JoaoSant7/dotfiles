-- Environmental variables
-- Prefer UWSM

-- Startup (runs once per session)
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 24")
end)
