return {
	"ibhagwan/fzf-lua", --,build = "./install --bin",
	-- optional for icon support
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({})
		vim.keymap.set("n", "<c-x><c-f>", require('fzf-lua').files, { desc = "Fzf Files" })
		vim.keymap.set("n", "<c-x><c-b>", require('fzf-lua').buffers, { desc = "Fzf Files" })
		vim.keymap.set("n", "<c-x><c-g>", require('fzf-lua').live_grep, { desc = "Fzf Files" })
		-- Or, with args
		vim.keymap.set({ "i" }, "<c-x><c-p>",
		function()
			require("fzf-lua").complete_file({
				cmd = "rg --files",
				winopts = { preview = { hidden = "nohidden" } }
			})
		end, { silent = true, desc = "Fuzzy complete file" })
	end,
}
