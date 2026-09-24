-- Environmental variables
-- Prefer UWSM

-- Startup (runs once per session)
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 24")
end)

-- NVIDIA
--hl.env("GBM_BACKEND", "nvidia_drm")
--hl.env("LIBVA_DRIVER_NAME", "nvidia")
--hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- Electron
--hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- GDK
--hl.env("GDK_BACKEND", "wayland")

-- XDG
--hl.env("XDG_SESSION_TYPE", "wayland")

-- Qt
--hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
--hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
--hl.env("QT_QPA_PLATFORM", "wayland")
