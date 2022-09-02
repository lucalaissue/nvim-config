require('lspconfig')['rls'].setup {
	on_attach = function (_, bufnr)
		require("lsp.lsp_utils").bindkeymaps(bufnr)
	end,
	capabilities = require("lsp.lsp_utils").capabilities
}

