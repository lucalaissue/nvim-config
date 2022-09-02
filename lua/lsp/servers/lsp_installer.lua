local lsp_installer = require('nvim-lsp-installer')

lsp_installer.setup{}

-- Setup Installed servers
for _, server in pairs(lsp_installer.get_installed_servers()) do
	require('lspconfig')[server.name].setup {
		on_attach = function (_, bufnr)
			require("lsp.lsp_utils").bindkeymaps(bufnr)
		end,
		capabilities = require("lsp.lsp_utils").capabilities
	}
end

