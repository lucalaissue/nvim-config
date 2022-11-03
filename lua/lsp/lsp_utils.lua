local M = {}
-- LSP keybindings
M.bindkeymaps = function(bufnr)
	-- Show line diagnostics automatically in hover window
	local opts = { noremap=true, silent=true }
	vim.o.updatetime = 2000
	vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>Trouble lsp_references<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>H', '<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ra', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
end
M.capabilities = require('cmp_nvim_lsp').default_capabilities()
return M
