require("packer").use {
	'tanvirtin/vgit.nvim',
	config = function ()
		require("vgit").setup()
		vim.o.updatetime = 300
		vim.o.incsearch = false
		vim.wo.signcolumn = 'yes'
		vim.api.nvim_set_keymap("n", "<leader>gc", ":lua require('telescope.builtin').git_commits()<CR>", {noremap = true, silent = true})
	end
}

