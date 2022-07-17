local use = require("packer").use

use {
	'lukas-reineke/indent-blankline.nvim',
	config = function()
		vim.opt.list = true
		require("indent_blankline").setup {
			show_current_context = false,
			show_current_context_start = false
		}
	end
}

