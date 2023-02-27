vim.o.background = 'dark'
vim.cmd [[
	colorscheme vscode
]]

local c = require('vscode.colors').get_colors()
require('vscode').setup({
	-- Enable transparent background
	transparent = false,

	-- Enable italic comment
	italic_comments = false,

	-- Disable nvim-tree background color
	disable_nvimtree_bg = true,
})
