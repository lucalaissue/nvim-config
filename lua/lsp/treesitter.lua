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
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
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

