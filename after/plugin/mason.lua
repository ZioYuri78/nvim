require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = {"lua_ls", "clangd", "pyright", "cmake"}
}

local lsp_on_attach = function(_,_)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require("telescope.builtin").lsp_references, {})
	vim.keymap.set('n', 'H', vim.lsp.buf.hover, {})
end

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup {
	on_attach = lsp_on_attach,
	capabilities = lsp_capabilities,
	settings = {
		Lua = {
			diagnostic = {
				globals = { "vim" }
			},
			workspace = {
				library = {
					[vim.fn.expand "$VIMRUNTIME/lua"] = true,
					[vim.fn.stdpath "config" .. "/lua"] = true,
				}
			}
		}
	}
}

require("lspconfig").clangd.setup {
	on_attach = lsp_on_attach,
	capabilities = lsp_capabilities,
}

require("lspconfig").pyright.setup {
	on_attach = lsp_on_attach,
	capabilities = lsp_capabilities,
}

require("lspconfig").cmake.setup {
	on_attach = lsp_on_attach,
	capabilities = lsp_capabilities,
}
