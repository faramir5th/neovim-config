local mapkey = require("util.keymapper").mapvimkey

-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n") -- Next buffer
mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>bk", "bd", "n") -- Close buffer

-- Directory Navigatio}n
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>e", "NvimTreeToggle", "n")

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
mapkey("<leader>wq", ":wq", "n") -- Close and save
mapkey("<leader>qq", ":q!", "n") -- Close without save

-- Window Management
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally
mapkey("<C-Up>", "resize +2", "n")
mapkey("<C-Down>", "resize -2", "n")
mapkey("<C-Left>", "vertical resize +2", "n")
mapkey("<C-Right>", "vertical resize -2", "n")

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path

-- Indenting
vim.keymap.set("v", "<", "<gv", { silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { silent = true, noremap = true })

local api = vim.api

-- Comments
api.nvim_set_keymap("n", "<C-/>", "gtc", { noremap = false })
api.nvim_set_keymap("v", "<C-/>", "goc", { noremap = false })

-- Telescope
mapkey("<leader>fk", "Telescope keymaps", "Show Keymaps")
mapkey("<leader>fh", "Telescope help_tags", "Show Help Tags")
mapkey("<leader>ff", "Telescope find_files", "Find Files")
mapkey("<leader>fg", "Telescope live_grep", "Live Grep")
mapkey("<leader>fb", "Telescope buffers", "Find Buffers")

-- Markdown Preview
mapkey("<C-m>", "MarkdownPreview", "n")
