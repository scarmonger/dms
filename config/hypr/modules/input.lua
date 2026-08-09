---------------
---- INPUT ----
---------------

hl.config({
	input = {
		numlock_by_default = true,
		left_handed = true,
		mouse_refocus = true,
		repeat_rate = 25,
		repeat_delay = 300,

		kb_layout = "us",
		kb_options = "caps:escape_shifted_capslock",

		follow_mouse = 1,
		scroll_factor = 0.8,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = true,
			scroll_factor = 0.8,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})
