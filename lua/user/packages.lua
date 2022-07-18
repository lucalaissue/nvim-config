local use = require('packer').use
require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'kyazdani42/nvim-web-devicons'

	use 'tpope/vim-surround'
	use 'townk/vim-autoclose'
	use 'tpope/vim-sleuth' -- Tab styles
end)

