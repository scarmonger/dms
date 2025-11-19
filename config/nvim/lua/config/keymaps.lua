-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- remap button
vim.keymap.set("n", ";", ":", {})
vim.keymap.set("n", ":", ";", {})

-- vim.keymap.set({ "n", "v" }, '"', 'viw<esc>a"<esc>hbi"<esc>lel<cr>', {})
-- vim.keymap.set({ "n", "v" }, "'", "viw<esc>a'<esc>hbi'<esc>lel<cr>", {})
-- vim.keymap.set({ "n", "v" }, "<", "viw<esc>a><esc>hbi<<esc>lel<cr>", {})
-- vim.keymap.set({ "n", "v" }, "(", "viw<esc>a)<esc>hbi(<esc>lel<cr>", {})
-- vim.keymap.set({ "n", "v" }, "{", "viw<esc>a}<esc>hbi{<esc>lel<cr>", {})
-- vim.keymap.set({ "n", "v" }, "*", "viw<esc>a**<esc>hbi**<esc>lel<cr>", {})

-- Comment
-- vim.keymap.set("n", "<c-c>", "gc", {})
-- vim.keymap.set("v", "<c-c>", "gb")

-- vim.keymap.set({ "i", "x", "n", "s" }, "'", '"', {})
-- vim.keymap.set({ "i", "x", "n", "s" }, '"', "'", {})
vim.keymap.set("i", "jk", "<esc>", { desc = "escape from insert mode" })
vim.keymap.set("i", "kj", "<esc>", { desc = "escape from insert mode" })
vim.keymap.set("n", "gj", ":BufferLineMovePrev<cr>", { desc = "move location to prev buffer" })
vim.keymap.set("n", "gk", ":BufferLineMoveNext<cr>", { desc = "move location to next buffer" })
vim.keymap.set("n", "gh", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("v", "<leader><Enter>", ":.! bc -l <CR>", { desc = "calculate number" })

vim.keymap.set("n", "<F5>", ":UndotreeToggle<CR>", { desc = "UndotreeToggle" })

vim.keymap.set("n", "H", "^", { desc = "" })
vim.keymap.set("v", "H", "^", { desc = "" })
vim.keymap.set("n", "L", "$", { desc = "" })
vim.keymap.set("v", "L", "$h", { desc = "" })
vim.keymap.set({ "n", "i" }, "<M-l>", "<esc>:bnext<cr>", { desc = "" })
vim.keymap.set({ "n", "i" }, "<M-h>", "<esc>:bprevious<cr>", { desc = "" })

vim.keymap.set("n", "<M-r>", ":w | GoRun<cr>", { desc = "GoRun" })
vim.keymap.set("i", "<M-r>", "<esc>:w | GoRun<cr>", { desc = "GoRun" })

-- vim.keymap.set("n", "<C-d>", '<esc>"_dd', { desc = "delete line when insert mode" })
vim.keymap.set("i", "<C-d>", '<esc>"_ddi', { desc = "delete line when insert mode" })

-- REGISTERS
-- vim.keymap.set({ "n", "v" }, "<c-n>", '"nyy', { desc = "copy to buffer n" })
-- vim.keymap.set({ "n", "v" }, "<c-s-n>", '"nyy', { desc = "copy to buffer n" })
vim.keymap.set("n", "<m-n>", '"nP', { desc = "paste from n buffer" })
vim.keymap.set("i", "<m-n>", "<c-r>n", { desc = "paste from n buffer" })
vim.keymap.set("n", "<leader>yp", ":let @+ = expand('%:p')<cr>", { desc = "copy filepath" })
vim.keymap.set("n", "<leader>yd", ":let @+ = expand('%:p:h:h %:p')<cr>", { desc = "copy file's directory" })
vim.keymap.set("n", "<leader>yc", ":let @+= @*<cr>", { desc = "transfer / copy * registers to clipboard" })
vim.keymap.set("n", "<leader>yr", ":let @+ = @r<CR>", { desc = "Copy @r to system clipboard" })
vim.keymap.set({ "n", "v" }, '"0', '"0p', { desc = "paste from last yank" })
vim.keymap.set("i", "<C-v>", '<C-r>"', { desc = "paste from the last yank, delete" })
vim.keymap.set("i", "<C-b>", "<C-r>0", { desc = "paste from last yank" })

vim.keymap.set("n", "<leader>ta", "ggVG", { desc = "select all" })
vim.keymap.set("n", "<leader>th", ':! thorium-browser "<c-r>%"<CR>', { desc = "preview markdown" })
vim.keymap.set("n", "<leader>tf", ':! firefox "<c-r>%"<CR>', { desc = "preview markdown" })
vim.keymap.set("n", "<leader>tp", ":let @r = @+<cr>", { desc = "copy to clipboard" })
-- vim.keymap.set("n", "<leader>tk", "<cmd>norm! K<cr>", { desc = "Keywordprg" })
vim.keymap.set(
  "n",
  "<leader>tr",
  ":let @+ = expand('%:p')<cr>o<c-r>+<Esc>dF/xv0d:let @+ = @*<cr>i<backspace><esc>:!go run <c-r>+<enter>",
  { desc = "go run" }
)
vim.keymap.set(
  "n",
  "<leader>tc",
  ":let @+ = expand('%:p')<cr>o<c-r>+<Esc>dF/xv0d:let @+ = @*<cr>i<backspace><esc>:cd <c-r>+<enter>",
  { desc = "change cwd to current file location" }
)

-- snippets
vim.keymap.set("n", "\\htm", ":read $HOME/.config/nvim/snippets/skeleton.html<CR>3jwf>a")
vim.keymap.set("n", "\\sig", ":read $HOME/.config/nvim/snippets/signature<CR>")
vim.keymap.set("n", "\\rfc", ":read $HOME/.config/nvim/snippets/rafce<CR>")
vim.keymap.set("n", "\\gpf", ':read $HOME/.config/nvim/snippets/go-printf<CR>ci"')
vim.keymap.set("n", "\\gpl", ':read $HOME/.config/nvim/snippets/go-println<CR>ci"')
vim.keymap.set("n", "\\gmf", ":read $HOME/.config/nvim/snippets/go-mainFunc<CR>3ji<tab>")

vim.keymap.set("n", "x", '"_x', { desc = "prevent yank character when deleting" })
vim.keymap.set("n", "X", '"_x', { desc = "prevent yank character when deleting" })
vim.keymap.set("n", "<Del>", '"_x', { desc = "prevent yank character when deleting" })
vim.keymap.set("v", "x", '"_x', { desc = "prevent yank character when deleting" })
vim.keymap.set("v", "X", '"_x', { desc = "prevent yank character when deleting" })
vim.keymap.set("v", "<Del>", '"_x', { desc = "prevent yank character when deleting" })

-- Primeagen
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "paste in visual mode, don't yank" })

vim.keymap.set("n", "<leader>d", '"_d', { desc = "delete into void" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "delete into void" })
vim.keymap.set("x", "<leader>d", '"_d', { desc = "delete into void" })

vim.keymap.set("v", "<leader>y", '"ry', { desc = "copy into r register" })
vim.keymap.set("n", "<leader>p", '"rp', { desc = "paste from r register" })

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "change project" })
-- go back to previous session with <tmux-leader>+L

vim.keymap.set("i", "<C-v>", "<esc>pa", { desc = "paste in insert mode" })
vim.keymap.set(
  "n",
  "<leader>se",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "replace word using sed" }
)
vim.keymap.set("n", "<leader>xe", "<cmd>!chmod +x %<CR>", { silent = true, desc = "make this file executable" })

-- This file is automatically loaded by lazyvim.plugins.config
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>sf", "<cmd>so %<cr>", { desc = "source file" })
-- map("n", "<leader>s0", "<cmd>Telescope notify<cr>", { desc = "check notification" })

-- Delete line when in insert mode
map("i", "<C-d>", "<esc>ddi", {})

-- Copy file name path to clipboard
map("n", "<F8>", ":let @+ = expand('%:p')<CR>", {})
map("n", "<F11>", " a<C-R>=strftime('%c')<CR>", {})

--Read an empty HTML template and move cursor to title
map("i", ",html", ":read $HOME/.config/nvim/snipfile/.skeleton.html<CR>3jwf>a", {})

-- Add undo break-points
map("i", " ", " <c-g>u")
-- map("i", ",", ",<c-g>u")
-- map("i", ".", ".<c-g>u")
-- map("i", ";", ";<c-g>u")

-- better up/down
-- map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
-- map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
-- map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
-- map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
-- map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
--
-- -- Resize window using <ctrl> arrow keys
-- map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
-- map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
-- map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
-- map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
--
-- -- Move Lines
-- map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
-- map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
-- map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
-- map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
-- map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
-- map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
--
-- -- buffers
-- if Util.has("bufferline.nvim") then
--   map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
--   map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
--   map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
--   map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
-- else
--   map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
--   map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
--   map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
--   map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
-- end
-- map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
-- map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
--
-- -- Clear search with <esc>
-- map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
--
-- -- Clear search, diff update and redraw
-- -- taken from runtime/lua/_editor.lua
-- map(
--   "n",
--   "<leader>ur",
--   "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
--   { desc = "Redraw / clear hlsearch / diff update" }
-- )

-- map({ "n", "x" }, "gw", "*N", { desc = "Search word under cursor" })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
-- map("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
-- map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
-- map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
-- map("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
-- map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
-- map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

-- save file
-- map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- better indenting
-- map("v", "<", "<gv")
-- map("v", ">", ">gv")
--
-- -- lazy
-- map("n", "<leader>l", "<cmd>:Lazy<cr>", { desc = "Lazy" })
--
-- -- new file
-- map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })
--
-- map("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
-- map("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })
--
-- if not Util.has("trouble.nvim") then
--   map("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
--   map("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })
-- end
--
-- -- highlights under cursor
-- if vim.fn.has("nvim-0.9.0") == 1 then
--   map("n", "<leader>ui", vim.show_pos, { desc = "inspect pos" })
-- end
--
-- -- floating terminal
-- map("n", "<leader>ft", function() Util.float_term(nil, { cwd = Util.get_root() }) end, { desc = "Terminal (root dir)" })
-- map("n", "<leader>fT", function() Util.float_term() end, { desc = "Terminal (cwd)" })
-- map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
--
-- -- windows
-- map("n", "<leader>ww", "<C-W>p", { desc = "Other window" })
-- map("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
-- map("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
-- map("n", "<leader>w|", "<C-W>v", { desc = "Split window right" })
-- map("n", "<leader>-", "<C-W>s", { desc = "Split window below" })
-- map("n", "<leader>|", "<C-W>v", { desc = "Split window right" })
--
-- -- tabs
-- map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
-- map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
-- map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
-- map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
-- map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
-- map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Edit specific file
-- vim.keymap.set("n", "<leader>er", ":Neotree right reveal<cr>")
-- vim.keymap.set("n", "<leader>eR", ":Neotree right position=current reveal_force_cwd<cr>")
-- vim.keymap.set("n", "<leader>eR", ":Neotree current %:p:h:h %:p reveal_force_cwd<cr>")
-- vim.keymap.set("n", "<leader>eE", ":Neotree right position=current<cr>")
-- vim.keymap.set("n", "<leader>ee", ":Neotree float reveal<cr>")
vim.keymap.set("n", "<leader>ei", ":e ~/marc/GitHub/ubuntu/config/nvim/init.lua<cr>", { desc = "Edit init.lua" })
vim.keymap.set("n", "<leader>ec", ":e ~/marc/GitHub/ubuntu/config/i3/config<cr>", { desc = "Edit i3-config.lua" })
vim.keymap.set(
  "n",
  "<leader>ep",
  ":e ~/marc/GitHub/ubuntu/config/nvim/lua/custom/plugins/plugins.lua<cr>",
  { desc = "Edit plugins.lua" }
)
vim.keymap.set("n", "<leader>ek", ":e ~/marc/GitHub/ubuntu/config/nvim/lua/config<cr>", { desc = "Edit Vim Keymap" })
vim.keymap.set("n", "<leader>ez", ":e ~/marc/GitHub/ubuntu/zshrc<cr>", { desc = "Edit zshrc" })
vim.keymap.set("n", "<leader>eu", ":e ~/marc/GitHub/ubuntu/ubuntu-i3.md<cr>", { desc = "Edit ubuntu.md file" })
vim.keymap.set("n", "<leader>er", ":e ~/marc/GitHub/ubuntu/config/ranger<cr>", { desc = "Edit ranger config file" })
vim.keymap.set("n", "<leader>ea", ":e ~/marc/GitHub/ubuntu/aliases<cr>", { desc = "Edit aliases" })
vim.keymap.set(
  "n",
  "<leader>eb",
  ":e ~/marc/GitHub/ubuntu/config/nvim/lua/custom/abbreviation.lua<cr>",
  { desc = "Edit abbreviation" }
)
