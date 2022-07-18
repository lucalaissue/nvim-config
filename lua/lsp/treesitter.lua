require("packer").use {
	'nvim-treesitter/nvim-treesitter',
	run = ":TSUpdate",
	config = function()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = "all",
			sync_install = false,
			auto_install = true,
			ignore_install = { "javascript" },
			highlight = {
				enable = true,
				disable = { "c", "rust" },
				additional_vim_regex_highlighting = false,
			}
		}
	end
}

