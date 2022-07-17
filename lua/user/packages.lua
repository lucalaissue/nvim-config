local use = require('packer').use
require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'kyazdani42/nvim-web-devicons'

	use 'tpope/vim-surround'
	use 'townk/vim-autoclose'
	use 'nvim-telescope/telescope.nvim'

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'nvim-treesitter/nvim-treesitter'
	use 'williamboman/nvim-lsp-installer'

	use 'onsails/lspkind.nvim' -- Icons in completion
	use 'folke/lsp-colors.nvim' -- Colors depending on error
	use 'akinsho/toggleterm.nvim'
	use 'tanvirtin/vgit.nvim' -- Git plugin
	use 'tpope/vim-sleuth' -- Tab styles
	use 'folke/trouble.nvim'
	use 'kyazdani42/nvim-tree.lua' -- Tree explorer
	use 'ThePrimeagen/harpoon' -- Navigation favourites
end)

