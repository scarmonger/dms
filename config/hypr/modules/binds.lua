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

local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local sMod = "SUPER + SHIFT" -- Sets "Windows" key as main modifier

----------------
-- Navigation --
----------------
hl.bind(sMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(sMod .. " + G", hl.dsp.exec_cmd(gmail))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(calendar))

hl.bind(mainMod .. " + TAB", hl.dsp.focus({ last = "last" }))
hl.bind(mainMod .. " + F1", hl.dsp.focus({ urgent_or_last = "urgent" }))
hl.bind(mainMod .. " + Grave", hl.dsp.window.cycle_next({ next = true }))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + SHIFT + Escape", hl.dsp.exec_cmd("systemctl suspend"))
hl.bind(mainMod .. " + comma", hl.dsp.exec_cmd("galculator", { float = true, move = { 1200, 100 } }))
hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | satty --filename -')) -- screen shot area
hl.bind("CTRL + Print", hl.dsp.exec_cmd("grim - | satty --filename -")) -- screen shot screen
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("grim - | satty --filename -")) -- screen shot screen

hl.bind(mainMod .. " + apostrophe", hl.dsp.exec_cmd("/home/mc/marc/GitHub/dms/local/bin/custom/showemoji"))
hl.bind(mainMod .. " + slash", hl.dsp.exec_cmd('notify-send -t 3000 "Dropbox Status" "$(dropbox status)"'))
hl.bind(mainMod .. " + semicolon", hl.dsp.exec_cmd("makoctl dismiss -a"))
hl.bind(mainMod .. " + SHIFT + semicolon", hl.dsp.exec_cmd("makoctl restore"))
hl.bind(
	mainMod .. " + CTRL + semicolon",
	hl.dsp.exec_cmd('makoctl mode -t dnd && notify-send -i manjaro -t 3000 "Mako" "DND Mode Off"')
)

hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("copyq toggle"))
hl.bind(mainMod .. " + Backspace", hl.dsp.exec_cmd("copyq disable"))
hl.bind(mainMod .. " + SHIFT + Backspace", hl.dsp.exec_cmd("copyq enable"))

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ workspace = "e-1" }))

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(
	sMod .. " + DELETE",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
	-- hl.dsp.exec_cmd("hyprshutdown")
)
hl.bind(mainMod .. " + Z", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + C", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + F1", hl.dsp.exec_cmd("/home/mc/.local/bin/custom/launch.sh"))
-- hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + SHIFT + Z", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
-- for i = 1, 10 do
-- 	local key = i % 10 -- 10 maps to key 0
-- 	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
-- 	-- hl.bind(mainMod .. " + " .. key, hl.dsp.exec_cmd("~/.config/hypr/scripts/smart-workspace.sh " .. i))
-- 	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
-- end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + period", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + period", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Move/resize windows with keyboard

hl.bind(
	mainMod .. " + equal",
	hl.dsp.window.resize({ x = 20, y = 0, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	mainMod .. " + minus",
	hl.dsp.window.resize({ x = -20, y = 0, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	mainMod .. " + SHIFT + equal",
	hl.dsp.window.resize({ x = 0, y = 20, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	mainMod .. " + SHIFT + minus",
	hl.dsp.window.resize({ x = 0, y = -20, relative = true }),
	{ locked = true, repeating = true }
)

hl.bind(
	mainMod .. " + ALT + H",
	hl.dsp.window.move({ x = -20, y = 0, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	mainMod .. " + ALT + L",
	hl.dsp.window.move({ x = 20, y = 0, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	mainMod .. " + ALT + J",
	hl.dsp.window.move({ x = 0, y = 20, relative = true }),
	{ locked = true, repeating = true }
)
hl.bind(
	mainMod .. " + ALT + K",
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
	mainMod .. " + N",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
-- Decrease Volume
hl.bind(
	mainMod .. " + SHIFT + N",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
-- Mute Volume
hl.bind(
	mainMod .. " + M",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
-- Mute Microphone
hl.bind(
	mainMod .. " + SHIFT + M",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
-- Increase, Decrease brightness
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind(
	mainMod .. " + SHIFT + B",
	hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
	{ locked = true, repeating = true }
)

-- Requires playerctl
hl.bind("SUPER + bracketright", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("SUPER + P", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
-- hl.bind("SUPER + p", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("SUPER + bracketleft", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
