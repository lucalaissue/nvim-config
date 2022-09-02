require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	rainbow = {
		enable = true
	}
}

require'treesitter-context'.setup {
	enable = true,
	patterns = {
		default = {
			'class',
			'function',
			'method',
			'for',
			'while',
			'if',
			'switch',
			'case'
		}
	}
}

