-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
	-- hl.exec_cmd(terminal)
	hl.exec_cmd("nm-applet")
	-- hl.exec_cmd("waybar & hyprpaper & firefox")
	hl.exec_cmd("waybar & hypridle & hyprpaper")
	hl.exec_cmd("~/.dropbox-dist/dropboxd")
	hl.exec_cmd("copyq")
	-- hl.exec_cmd("Telegram & librewolf --new-window https://web.whatsapp.com/ ")
	hl.exec_cmd("google-chrome-stable", { workspace = "name:A silent" })
	hl.exec_cmd("ghostty", { workspace = "name:S silent" })
	hl.exec_cmd("firefox", { workspace = "name:D silent" })
	hl.exec_cmd("keepassxc", { workspace = "name:R" })
	hl.exec_cmd("librewolf", { workspace = "name:F silent" })
	hl.exec_cmd("Telegram", { workspace = "name:F silent" })

	hl.exec_cmd("sudo kmonad /home/mc/marc/GitHub/dms/config/kmonad/ralt-super_usb_keyboard.kbd")
	hl.exec_cmd("sudo kmonad /home/mc/marc/GitHub/dms/config/kmonad/ralt-super.kbd")
end)
