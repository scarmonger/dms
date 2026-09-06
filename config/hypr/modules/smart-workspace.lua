local last_active_ws = nil

local function focus_workspace(ws)
	if type(ws) == "number" then
		hl.dispatch(hl.dsp.focus({
			workspace = ws,
		}))
	else
		hl.dispatch(hl.dsp.focus({
			workspace = "name:" .. tostring(ws),
		}))
	end
end

local function same_workspace(a, b)
	return tostring(a) == tostring(b)
end

local function smart_workspace(target)
	local active = hl.get_active_workspace()

	-- hl.notification.create({ text = "active: " .. tostring(active.name), timeout = 5000 })
	-- hl.notification.create({ text = "target: " .. tostring(target_name), timeout = 5000 })
	-- hl.notification.create({ text = "last: " .. tostring(last_active_ws), timeout = 5000 })

	if same_workspace(active.name, target) then
		-- Sudah di target → kembali
		if last_active_ws ~= nil then
			focus_workspace(last_active_ws)
		end
	else
		-- Simpan workspace sekarang
		last_active_ws = active.name

		-- Pergi ke target
		focus_workspace(target)
	end
end

local function workspace_callback(ws)
	return function()
		smart_workspace(ws)
	end
end

-- Assign numbers to workspace
for i = 1, 10 do
	local key = i % 10

	hl.bind("SUPER + " .. key, workspace_callback(i))

	hl.bind(
		"SUPER + SHIFT + " .. key,
		hl.dsp.window.move({
			workspace = i,
		})
	)
end

-- Create arrays of character to be Assign
local workspaces = {
	"A",
	"S",
	"D",
	"F",
	"W",
	"E",
	"R",
	"T",
	"G",
	"O",
}

-- Assign character to numbers
for index, workspace in ipairs(workspaces) do
	hl.bind("SUPER + " .. workspace, workspace_callback(index))
	hl.bind(
		"SUPER + SHIFT + " .. workspace,
		hl.dsp.window.move({
			workspace = index,
		})
	)
end
