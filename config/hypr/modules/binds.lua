---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal = "kitty"
local fileManager = "nemo"
local browser = "google-chrome-stable"
local calendar = browser .. " --app=http://calendar.google.com"
local gmail = browser .. " --app=http://mail.google.com"
local menu = "/home/mc/.local/bin/custom/dmenu_run_history"

---------------------
---- KEYBINDINGS ----
---------------------

local Mod1 = "SUPER" -- Sets "Windows" key as main modifier
local Mod2 = "SUPER + SHIFT" -- Sets "Windows" key as main modifier

----------------
-- Navigation --
----------------
hl.bind(Mod2 .. " + C", hl.dsp.exec_cmd("galculator", { float = true, move = { 1200, 100 } }))
hl.bind(Mod2 .. " + E", hl.dsp.exec_cmd("/home/mc/marc/GitHub/dms/local/bin/custom/showemoji"))
--hl.bind(Mod2 .. " + F", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(Mod2 .. " + G", hl.dsp.exec_cmd(gmail))
hl.bind(Mod2 .. " + P", hl.dsp.window.pin({}))
hl.bind(Mod1 .. " + C", hl.dsp.exec_cmd(calendar))

hl.bind(Mod1 .. " + TAB", hl.dsp.focus({ last = "last" }))
hl.bind(Mod1 .. " + F1", hl.dsp.focus({ urgent_or_last = "urgent" }))
hl.bind(Mod1 .. " + Grave", hl.dsp.window.cycle_next({ next = true }))
hl.bind(Mod1 .. " + Escape", hl.dsp.exec_cmd("hyprlock"))
hl.bind(Mod2 .. " + Escape", hl.dsp.exec_cmd("wlogout"))
hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | satty --filename -')) -- screen shot area
hl.bind("CTRL + Print", hl.dsp.exec_cmd("grim - | satty --filename -")) -- screen shot screen
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("grim - | satty --filename -")) -- screen shot screen

-- hl.bind(Mod1 .. " + slash", hl.dsp.exec_cmd('notify-send -t 3000 "Dropbox Status" "$(dropbox status)"'))
hl.bind(Mod1 .. " + semicolon", hl.dsp.exec_cmd("makoctl dismiss -a"))
hl.bind(Mod1 .. " + SHIFT + semicolon", hl.dsp.exec_cmd("makoctl restore"))
hl.bind(
	Mod1 .. " + CTRL + semicolon",
	hl.dsp.exec_cmd('makoctl mode -t dnd && notify-send -i manjaro -t 3000 "Mako" "DND Mode Off"')
)

hl.bind(Mod1 .. " + X", hl.dsp.workspace.move({ monitor = "HDMI-A-2" }))
hl.bind(Mod2 .. " + X", hl.dsp.workspace.move({ monitor = "DP-2" }))
hl.bind(Mod1 .. " + V", hl.dsp.exec_cmd("copyq toggle"))
hl.bind(Mod1 .. " + Backspace", hl.dsp.exec_cmd("copyq disable"))
hl.bind(Mod1 .. " + SHIFT + Backspace", hl.dsp.exec_cmd("copyq enable"))

hl.bind(Mod1 .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(Mod1 .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(Mod1 .. " + K", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(Mod1 .. " + J", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(Mod2 .. " + H", hl.dsp.window.swap({ direction = "left" }))
hl.bind(Mod2 .. " + L", hl.dsp.window.swap({ direction = "right" }))
hl.bind(Mod2 .. " + K", hl.dsp.window.swap({ direction = "up" }))
hl.bind(Mod2 .. " + J", hl.dsp.window.swap({ direction = "d" }))

--------------
-- Monitors --
--------------
hl.bind(Mod1 .. " + bracketleft", hl.dsp.workspace.move({ monitor = "+" }))
hl.bind(Mod2 .. " + bracketleft", hl.dsp.workspace.move({ monitor = "-" }))

hl.bind("SUPER + SHIFT + LEFT", hl.dsp.workspace.move({ monitor = "-" }))
hl.bind("SUPER + SHIFT + RIGHT", hl.dsp.workspace.move({ monitor = "+" }))

local function swap_monitors()
	local monitors = hl.get_monitors()

	if #monitors ~= 2 then
		return
	end

	hl.dispatch(hl.dsp.workspace.swap_monitors({
		monitor1 = monitors[1],
		monitor2 = monitors[2],
	}))
end

hl.bind("SUPER + CTRL + S", swap_monitors)

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(Mod1 .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(Mod2 .. " + Return", hl.dsp.exec_cmd("ghostty"))
hl.bind(Mod1 .. " + Q", hl.dsp.window.close())
hl.bind(
	Mod2 .. " + DELETE",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
	-- hl.dsp.exec_cmd("hyprshutdown")
)
hl.bind(Mod1 .. " + Z", hl.dsp.window.float({ action = "toggle" }))
hl.bind(Mod1 .. " + Space", hl.dsp.exec_cmd(menu))
hl.bind(Mod2 .. " + Space", hl.dsp.exec_cmd("run_desktop_app"))
hl.bind(Mod1 .. " + CTRL + Space", hl.dsp.exec_cmd("rofi -show window"), { locked = true })
hl.bind(Mod1 .. " + F1", hl.dsp.exec_cmd("/home/mc/.local/bin/custom/launch.sh"))
-- hl.bind(Mod1 .. " + P", hl.dsp.window.pseudo())
hl.bind(Mod1 .. " + SHIFT + Z", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with Mod1 + arrow keys
hl.bind(Mod1 .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(Mod1 .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(Mod1 .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(Mod1 .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with Mod1 + [0-9]
-- Move active window to a workspace with Mod1 + SHIFT + [0-9]
-- for i = 1, 10 do
-- 	local key = i % 10 -- 10 maps to key 0
-- 	hl.bind(Mod1 .. " + " .. key, hl.dsp.focus({ workspace = i }))
-- 	-- hl.bind(Mod1 .. " + " .. key, hl.dsp.exec_cmd("~/.config/hypr/scripts/smart-workspace.sh " .. i))
-- 	hl.bind(Mod1 .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
-- end

-- Example special workspace (scratchpad)
hl.bind(Mod1 .. " + period", hl.dsp.workspace.toggle_special("magic"))
hl.bind(Mod1 .. " + SHIFT + period", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with Mod1 + scroll
hl.bind(Mod1 .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(Mod1 .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with Mod1 + LMB/RMB and dragging
hl.bind(Mod1 .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(Mod1 .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Move/resize windows with keyboard

hl.bind(
	Mod1 .. " + equal",
	hl.dsp.window.resize({ x = 20, y = 0, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	Mod2 .. " + equal",
	hl.dsp.window.resize({ x = 700, y = 0, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	Mod1 .. " + minus",
	hl.dsp.window.resize({ x = -20, y = 0, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	Mod2 .. " + minus",
	hl.dsp.window.resize({ x = -700, y = 0, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	Mod1 .. " + SHIFT + equal",
	hl.dsp.window.resize({ x = 0, y = 20, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	Mod1 .. " + SHIFT + minus",
	hl.dsp.window.resize({ x = 0, y = -20, relative = true }),
	{ locked = true, repeating = true }
)

hl.bind(
	Mod1 .. " + ALT + H",
	hl.dsp.window.move({ x = -20, y = 0, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	Mod1 .. " + ALT + L",
	hl.dsp.window.move({ x = 20, y = 0, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	Mod1 .. " + ALT + J",
	hl.dsp.window.move({ x = 0, y = 20, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	Mod1 .. " + ALT + K",
	hl.dsp.window.move({ x = 0, y = -20, relative = true }),
	{ locked = true, repeating = true }
)

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Laptop multimedia keys for volume and LCD brightness
-- Increase Volume
hl.bind(
	Mod1 .. " + N",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
-- Decrease Volume
hl.bind(
	Mod1 .. " + SHIFT + N",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
-- Mute Volume
hl.bind(
	Mod1 .. " + M",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
-- Mute Microphone
hl.bind(
	Mod1 .. " + SHIFT + M",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
-- Increase, Decrease brightness
hl.bind(Mod1 .. " + B", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind(Mod1 .. " + SHIFT + B", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("SUPER + F11", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("SUPER + F12", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("SUPER + P", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
-- hl.bind("SUPER + p", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
--

hl.bind(Mod2 .. " + D", hl.dsp.layout("fit visible"))
hl.bind(Mod2 .. " + F", hl.dsp.layout("fit active"))
