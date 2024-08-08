return -- Example for neo-tree.nvim
{
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},

	config = function()
		vim.keymap.set("n", "<c-y>", "<cmd>Neotree float toggle<CR>")
		require("neo-tree").setup({
			popup_border_style = "rounded"
		})
		vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", {bg="#282828"})

	end,
}
