local use = require('packer').use
require('packer').startup(function()
    -- Basics
	use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'tpope/vim-surround'
    use 'townk/vim-autoclose'
    use 'nvim-telescope/telescope.nvim'

    -- LSP
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'nvim-treesitter/nvim-treesitter'
    use 'williamboman/nvim-lsp-installer'

    -- Customization
	use 'onsails/lspkind.nvim' -- Icons in completion
    use 'folke/lsp-colors.nvim' -- Colors depending on error
	use 'nvim-lualine/lualine.nvim' -- line
    use 'sainnhe/edge'

    -- Utils
    use 'akinsho/toggleterm.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'tanvirtin/vgit.nvim' -- Git plugin

    -- Navigation
    use 'kyazdani42/nvim-tree.lua' -- Tree explorer
    use 'ThePrimeagen/harpoon' -- Navigation favourites

    -- Unused
    -- use 'folke/trouble.nvim'
    -- use { 'akinsho/bufferline.nvim', tag = "v2.*" }
end)
