require("packer").use {
	'morhetz/gruvbox',
	config = function()
		vim.cmd "let g:gruvbox_sign_column = 'bg0'"
		vim.cmd 'colorscheme gruvbox'
	end
}

