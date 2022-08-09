local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	print("Installing packer...")
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	io.write(string.format("Packer.nvim installed. You may restart neovim now.\n"))
	os.exit(0)
end

return require("packer").startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'tpope/vim-sleuth'
	use 'morhetz/gruvbox'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'kyazdani42/nvim-web-devicons'
	use 'onsails/lspkind.nvim'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'hrsh7th/cmp-nvim-lsp'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate"
	}
	use 'folke/trouble.nvim'
	use 'windwp/nvim-autopairs'
	use 'ThePrimeagen/harpoon'
	use 'kyazdani42/nvim-tree.lua'
	use 'nvim-telescope/telescope.nvim'
	use 'akinsho/toggleterm.nvim'
	use 'tanvirtin/vgit.nvim'
end)

