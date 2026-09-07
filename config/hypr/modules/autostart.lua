-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
	-- hl.exec_cmd(terminal)
	hl.exec_cmd("nm-applet")
	-- hl.exec_cmd("waybar & hyprpaper & firefox")
	hl.exec_cmd("waybar & hypridle & hyprpaper")
	hl.exec_cmd("~/.dropbox-dist/dropboxd")
	hl.exec_cmd("sleep 30 && copyq")
	-- hl.exec_cmd("Telegram & librewolf --new-window https://web.whatsapp.com/ ")
	-- hl.exec_cmd("google-chrome-stable", { workspace = "name:A silent" })
	-- hl.exec_cmd("ghostty", { workspace = "name:S silent" })
	-- hl.exec_cmd("firefox", { workspace = "name:D silent" })
	-- hl.exec_cmd("keepassxc", { workspace = "name:R" })
	-- hl.exec_cmd("librewolf", { workspace = "name:F silent" })
	-- hl.exec_cmd("Telegram", { workspace = "name:F silent" })

	hl.exec_cmd("sleep 60 && google-chrome-stable", { monitor = "HDMI-A-2", workspace = "1 silent" })
	hl.exec_cmd("sleep 10 && kitty ", { workspace = "2 silent" })
	hl.exec_cmd("sleep 50 && firefox", { workspace = "3 silent" })
	hl.exec_cmd(
		"sleep 20 && /usr/bin/chromium --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm",
		{ workspace = "4 silent" }
	)
	--hl.bind(Mod2 .. " + C", hl.dsp.exec_cmd("galculator", { float = true, move = { 1200, 100 } }))
	hl.exec_cmd("sleep 40 && Telegram", { workspace = "4 silent" })
	hl.exec_cmd("sleep 50 && keepassxc", { workspace = "1 silent" })
	hl.exec_cmd("sleep 30 && thunderbird", { workspace = "7" })
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("sudo kmonad /home/mc/marc/GitHub/dms/config/kmonad/ralt-super_usb_keyboard.kbd")
	hl.exec_cmd("sudo kmonad /home/mc/marc/GitHub/dms/config/kmonad/ralt-super_usb_keyboard_rumah.kbd")
	hl.exec_cmd("sudo kmonad /home/mc/marc/GitHub/dms/config/kmonad/ralt-super.kbd")
end)
