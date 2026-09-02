------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
	output = "eDP-1",
	-- mode = "preferred",
	mode = "highres",
	position = "auto",
	scale = "1",
	-- mirror = "eDP-1",
})

hl.monitor({
	output = "HDMI-A-1",
	-- mode = "preferred",
	mode = "1920x1080@120",
	position = "auto",
	scale = "1",
	mirror = "eDP-1",
})

-- hl.monitor({ output = "DP-3", mode = "1920x1080@60", position = "0x0", scale = 1, mirror = "DP-2" })

-- hl.workspace_rule({ workspace = "1", monitor = "eDP-1", persistent = true })
-- hl.workspace_rule({ workspace = "2", monitor = "eDP-1", persistent = true })
