-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
	general = { -- layout = "dwindle",
		layout = "scrolling",
	},
	dwindle = {
		preserve_split = true, -- You probably want this
	},
	scrolling = {
		fullscreen_on_one_column = true,
		column_width = 0.95,
		focus_fit_method = 1,
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
	master = {
		new_status = "master",
	},
})
