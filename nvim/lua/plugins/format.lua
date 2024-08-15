return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				javascript = { "prettier", stop_after_first = true },
				typescript = { "prettier", stop_after_first = true },
				javascriptreact = { "prettier", stop_after_first = true },
				typescriptreact = { "prettier", stop_after_first = true },
				vue = { "prettier", stop_after_first = true },
				html = { "prettier", stop_after_first = true },
				css = { "prettier", stop_after_first = true },
				scss = { "prettier", stop_after_first = true },
				less = { "prettier", stop_after_first = true },
				markdown = { "prettier", stop_after_first = true },
				json = { "prettier", stop_after_first = true },
				jsonc = { "prettier", stop_after_first = true },
				yaml = { "prettier", stop_after_first = true },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
