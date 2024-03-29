local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	print("Installing packer...")
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	print("Packer installed")
end

return require("packer").startup(function(use)
	-- Essentials
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'kyazdani42/nvim-web-devicons'

	-- From the Pope himself
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'tpope/vim-sleuth'

	-- Tools
	use 'windwp/nvim-autopairs'
	use 'ThePrimeagen/harpoon'
	use 'kyazdani42/nvim-tree.lua'
	use 'akinsho/toggleterm.nvim'
	use 'tanvirtin/vgit.nvim'
	use 'sbdchd/neoformat'
	use 'preservim/nerdcommenter'

	-- Telescope
	use 'nvim-telescope/telescope.nvim'

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'folke/trouble.nvim'
	-- use 'scalameta/nvim-metals'

	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
	use 'nvim-treesitter/nvim-treesitter-context'

	-- Customization
	use 'lukas-reineke/indent-blankline.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'onsails/lspkind.nvim'

	-- Colorschemes
	use 'Mofiqul/vscode.nvim'
end)
