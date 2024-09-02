return {
	"neovim/nvim-lspconfig",
	config = function()
		-- Set up lspconfig.
		local lsp = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		--c/c++
		lsp["clangd"].setup({
			capabilities = capabilities,
		})

		--lua
		lsp["lua_ls"].setup({
			capabilities = capabilities,
		})

		--python
		lsp["pyright"].setup({
			capabilities = capabilities,
		})
		-- html
		lsp["html"].setup({
			capabilities = capabilities,
		})

		-- css

		lsp["cssls"].setup({
			capabilities = capabilities,
		})

		-- tailwindcss
		lsp["tailwindcss"].setup({
			capabilities = capabilities,
		})

		--emmet
		lsp["emmet_language_server"].setup({
			capabilities = capabilities,
		})

		--js
		lsp["tsserver"].setup({
			init_options = {
				plugins = {
					{
						name = "@vue/typescript-plugin",
						location = "/usr/lib/node_modules/@vue/language-server",
						languages = { "vue" },
					},
				},
			},
			capabilities = capabilities,
		})
		--Vue
		lsp["volar"].setup({
			init_options = {
				vue = {
					hybridMode = false,
				},
			},
			capabilities = capabilities,
		})

		--typst

		lsp["typst_lsp"].setup({
			capabilities = capabilities,
		})
	end,
}
