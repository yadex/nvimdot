return {
	"ibhagwan/fzf-lua", --build = "./install --bin",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({
			winopts = {
				preview = { hidden = "hidden" },
			},
		})
		vim.keymap.set("n", "<C-f>", function()
			require("fzf-lua").files({ cmd = "rg --color=never --files --hidden --follow  -g '!{.git,.local}/'" })
		end, { desc = "Fzf Live Grep Current Buffer" })

		vim.keymap.set("n", "<C-g>", require("fzf-lua").lgrep_curbuf, { desc = "Fzf Grep Current Buffer" })
		-- vim.keymap.set("n", "<c-x><c-g>", require("fzf-lua").grep_curbuf, { desc = "Fzf Grep Current Buffer" })
		vim.keymap.set("n", "<C-b>", require("fzf-lua").buffers, { desc = "Fzf Buffers" })
		-- Or, with args
		--		vim.keymap.set({ "i" }, "<c-x><c-p>",
		--		function()
		--			require("fzf-lua").complete_file({
		--				cmd = "rg --files",
		--				winopts = { preview = { hidden = "nohidden" } }
		--			})
		--		end, { silent = true, desc = "Fuzzy complete file" })
		--
		-- path complete
		vim.keymap.set({ "n", "v", "i" }, "<C-p>", function()
			require("fzf-lua").complete_path()
		end, { silent = true, desc = "Fuzzy complete path" })
	end,
}
