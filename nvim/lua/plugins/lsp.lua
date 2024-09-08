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

		--rust
		lsp["rust_analyzer"].setup({
			root_dir = function(fname)
				return require("lspconfig").util.find_git_ancestor(fname) or vim.fn.getcwd()
			end,
			capabilities = capabilities,
		})

		--lua
		lsp["lua_ls"].setup({
			capabilities = capabilities,
		})

		--python
		lsp["pyright"].setup({
			root_dir = function(fname)
				return require("lspconfig").util.path.dirname(fname) or vim.loop.cwd()
			end,
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
		lsp["ts_ls"].setup({
			init_options = {
				plugins = {
					{
						name = "@vue/typescript-plugin",
						-- location = "/usr/lib/node_modules/@vue/language-server",
						location = "$HOME/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server/",
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
