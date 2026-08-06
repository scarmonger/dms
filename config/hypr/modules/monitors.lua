------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "1.25",
	mirror = "eDP-1",
})

-- hl.monitor({ output = "DP-3", mode = "1920x1080@60", position = "0x0", scale = 1, mirror = "DP-2" })
-- hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1, mirror = "DP-1" })

-- hl.workspace_rule({ workspace = "1", monitor = "eDP-1", persistent = true })
-- hl.workspace_rule({ workspace = "2", monitor = "eDP-1", persistent = true })
-- hl.workspace_rule({ workspace = "3", monitor = "eDP-1", persistent = true })
-- hl.workspace_rule({ workspace = "4", monitor = "eDP-1", persistent = true })
