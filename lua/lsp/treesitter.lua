require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"c",
		"cpp",
		"java",
		"javascript",
		"lua",
		"python",
		"rust",
		"scala",
		"typescript",
		"vue"
	},
	highlight = {
		enable = true
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

