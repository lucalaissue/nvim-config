vim.g["quit_on_open"] = 1
require('nvim-tree').setup{
	disable_netrw = true,
	hijack_netrw = true
}
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

