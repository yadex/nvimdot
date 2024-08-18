return {
	"OXY2DEV/markview.nvim",
	lazy = true, -- Recommended
	ft = "markdown", -- If you decide to lazy-load anyway

	dependencies = {
		-- You will not need this if you installed the
		-- parsers manually
		-- Or if the parsers are in your $RUNTIMEPATH
		"nvim-treesitter/nvim-treesitter",

		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		list_items = {
			enable = true,
			shift_width = 2,
			indent_size = 2,

			marker_minus = {},
			marker_plus = {},
			marker_star = {},
			marker_dot = {},
		},
	},
}
