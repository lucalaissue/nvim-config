require("vgit").setup({
	settings = {
		hls = {
			GitSignsAdd = {
				gui = nil,
				fg = '#689d6a',
				bg = nil,
				sp = nil,
				override = true,
			},
			GitSignsChange = {
				gui = nil,
				fg = '#fabd2f',
				bg = nil,
				sp = nil,
				override = true,
			},
			GitSignsDelete = {
				gui = nil,
				fg = 'fb4934',
				bg = nil,
				sp = nil,
				override = true,
			}
		},
		signs = {
			priority = 1
		}
	}
})

vim.api.nvim_set_keymap("n", "<leader>gc", ":lua require('telescope.builtin').git_commits()<CR>", {noremap = true, silent = true})
