-- packages
require("lazynvim")

-- basic setup
local set = vim.opt
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.number = true
set.relativenumber = true
set.backup = false
set.swapfile = false
set.clipboard = "unnamedplus"
set.cursorline = true
-- disable mouse
set.mouse = ""
set.cmdheight = 0
set.shortmess = "aItFoOSs"

--neovide
if vim.g.neovide then
	vim.o.guifont = "monospace:h22"
end
