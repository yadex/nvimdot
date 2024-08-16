return {
	"ibhagwan/fzf-lua", --,build = "./install --bin",
	-- optional for icon support
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({})
		vim.keymap.set("n", "<c-f>", require("fzf-lua").grep_curbuf, { desc = "Fzf Files" })
		vim.keymap.set("n", "<c-b>", require("fzf-lua").buffers, { desc = "Fzf Files" })
		vim.keymap.set("n", "<c-g>", require("fzf-lua").live_grep, { desc = "Fzf Files" })
		-- Or, with args
		--		vim.keymap.set({ "i" }, "<c-x><c-p>",
		--		function()
		--			require("fzf-lua").complete_file({
		--				cmd = "rg --files",
		--				winopts = { preview = { hidden = "nohidden" } }
		--			})
		--		end, { silent = true, desc = "Fuzzy complete file" })
		--
		-- 路径补全
		vim.keymap.set({ "n", "v", "i" }, "<C-p>", function()
			require("fzf-lua").complete_path()
		end, { silent = true, desc = "Fuzzy complete path" })
	end,
}
