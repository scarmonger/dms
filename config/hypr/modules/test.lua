local last_active_ws = nil
-- Helper function to toggle or switch to a named workspace
local function smart_workspace(target_name)
	-- Get active workspace object directly without shell commands/jq
	local active = hl.get_active_workspace()

	hl.notification.create({ text = "active " .. tostring(active.name), timeout = 5000 })
	hl.notification.create({ text = "target " .. tostring(target_name), timeout = 5000 })
	hl.notification.create({ text = "last_active_ws " .. tostring(last_active_ws), timeout = 5000 })

	hl.dsp.exec_cmd('hyprctl dispatch \'hl.dsp.focus({last="last"})')
	hl.dsp.focus({ last = "last" })
	if last_active_ws ~= nil and active.name == last_active_ws.name then
		-- Toggle to previous workspace if already on target workspace
		hl.notification.create({ text = "why", timeout = 5000 })
		-- hl.dsp.focus({ last = "last" })
		hl.dsp.exec_cmd('hyprctl dispatch \'hl.dsp.focus({last="last"})')
	else
		-- Switch to the named workspace
		-- hl.dispatch("workspace", "name:" .. target_name)
		hl.bind("SUPER + " .. target_name, hl.dsp.focus({ workspace = "name:" .. target_name }))
		last_active_ws = hl.get_active_workspace().name
	end
end

-- Bind SUPER + G using an anonymous callback function
hl.bind("SUPER + G", function()
	smart_workspace("G")
end)
-- -- Helper function to toggle or switch workspace
-- local function smart_workspace(target)
-- 	local active = hl.dsp.exec_cmd("hyprctl activeworkspace -j | jq -r ")
--
-- 	hl.notification.create({ text = "active " .. tostring(active), timeout = 5000 })
--
-- 	if active == target then
-- 		hl.dsp.focus({ last = "last" })
-- 	else
-- 		hl.bind(mainMod .. " + G", hl.dsp.focus({ workspace = "name:G" }))
-- 	end
-- end
--
-- hl.bind(mainMod .. " + G", function()
-- 	smart_workspace(G)
-- end)
--
-- for i = 1, 10 do
-- 	local key = i % 10 -- 10 maps to key 0
-- 	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
-- 	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
-- end

-- for i = 1, 9 do
-- 	hl.bind(mod, tostring(i), function()
-- 		smart_workspace(i)
-- 	end)
-- end
