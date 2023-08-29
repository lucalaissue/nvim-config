require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
		disable = {
			"lua"
		}
	}
}

require'treesitter-context'.setup {
	enable = true,
	patterns = {
		default = {
			'class',
			'function',
			'method'
		}
	}
}

