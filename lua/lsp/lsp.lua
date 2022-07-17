local lsp_installer = require('nvim-lsp-installer')

-- Setup Installed servers
local servers = {}
for i, server in pairs(lsp_installer.get_installed_servers()) do
	table.insert(servers, server.name)
end

local signs = {
	Error = "",
	Warn = "",
	Hint = "",
	Info = ""
}

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

vim.diagnostic.config({
	virtual_text = false,
	underline = false
})

-- LSP keybindings
local opts = { noremap=true, silent=true }
local on_attach = function(client, bufnr)
	-- Show line diagnostics automatically in hover window
	vim.o.updatetime = 2000
	vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua require("telescope.builtin").lsp_implementations()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>Trouble lsp_references<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>H', '<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ra', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
lsp_installer.setup{}
for _, server in pairs(servers) do
	require('lspconfig')[server].setup {
		on_attach = on_attach,
		capabilities = capabilities
	}
end

