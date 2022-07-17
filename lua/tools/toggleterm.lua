require("toggleterm").setup()

-- Terminal
vim.api.nvim_set_keymap("n", "<leader>tt", ":ToggleTerm<CR>",                 {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tf", ":ToggleTerm direction=float<CR>", {noremap = true, silent = true})

