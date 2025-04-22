-- packages
require("lazynvim")
require("lsp")

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

-- windowbar
vim.o.winborder = "rounded"

--neovide
if vim.g.neovide then
	vim.o.guifont = "monospace:h23"
end

-- noice windownbar
local initialWinborder = vim.o.winborder
vim.api.nvim_create_autocmd("CmdlineEnter", {
	callback = function()
		vim.o.winborder = "none"
	end,
})
vim.api.nvim_create_autocmd("CmdlineLeave", {
	callback = function()
		vim.o.winborder = initialWinborder
	end,
})
