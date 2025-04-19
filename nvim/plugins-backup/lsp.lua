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
			settings = {
				["rust-analyzer"] = {
					procMacro = {
						enable = false, -- 禁用或启用 proc-macro 支持
					},
					cargo = {
						loadOutDir = true, -- 加载 `target` 目录
					},
					diagnostics = {
						check = "never", -- 何时进行诊断检查
					},
					format = {
						importGroup = "none", -- 控制导入排序
					},
				},
			},
			on_attach = function(client, bufnr)
				-- 禁用保存时的诊断请求
				client.server_capabilities.document_did_save = false
				-- 或者
				-- client.server_capabilities.textDocumentSync.options.didSave = false
			end,
			root_dir = function(fname)
				return require("lspconfig").util.find_git_ancestor(fname) or vim.fn.getcwd()
			end,
			capabilities = capabilities,
		})

		--lua
		lsp["lua_ls"].setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
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
