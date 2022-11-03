vim.g.mapleader = " "

local keybindingOpts = {noremap = true, silent = true}

-- Hard mode
vim.api.nvim_set_keymap("n", "<Left>",  "", keybindingOpts)
vim.api.nvim_set_keymap("n", "<Right>", "", keybindingOpts)
vim.api.nvim_set_keymap("n", "<Up>",    "", keybindingOpts)
vim.api.nvim_set_keymap("n", "<Down>",  "", keybindingOpts)
vim.api.nvim_set_keymap("x", "<Left>",  "", keybindingOpts)
vim.api.nvim_set_keymap("x", "<Right>", "", keybindingOpts)
vim.api.nvim_set_keymap("x", "<Up>",    "", keybindingOpts)

-- Replace <C-{hjkl}> with arrows
vim.api.nvim_set_keymap("!", "<C-h>", "<Left>", keybindingOpts)
vim.api.nvim_set_keymap("!", "<C-j>", "<Down>", keybindingOpts)
vim.api.nvim_set_keymap("!", "<C-k>", "<Up>", keybindingOpts)
vim.api.nvim_set_keymap("!", "<C-l>", "<Right>", keybindingOpts)
vim.api.nvim_set_keymap("x", "<Down>",  "", keybindingOpts)

-- Utils
vim.api.nvim_set_keymap("n", "<C-j>", "10jzz", keybindingOpts)
vim.api.nvim_set_keymap("n", "<C-k>", "10kzz", keybindingOpts)
vim.api.nvim_set_keymap("n", "Y", "y$", keybindingOpts)
vim.api.nvim_set_keymap("n", "J", "mzJ`z", keybindingOpts)
vim.api.nvim_set_keymap("n", "N", "Nzzzv", keybindingOpts)
vim.api.nvim_set_keymap("n", "n", "nzzzv", keybindingOpts)

-- Undo checkpoints while inserting
vim.api.nvim_set_keymap("i", ",", ",<C-g>u", keybindingOpts)
vim.api.nvim_set_keymap("i", ".", ".<C-g>u", keybindingOpts)
vim.api.nvim_set_keymap("i", "!", "!<C-g>u", keybindingOpts)
vim.api.nvim_set_keymap("i", "(", "(<C-g>u", keybindingOpts)
vim.api.nvim_set_keymap("i", ")", ")<C-g>u", keybindingOpts)
vim.api.nvim_set_keymap("i", "<", "<lt><C-g>u", keybindingOpts)
vim.api.nvim_set_keymap("i", ">", "><C-g>u", keybindingOpts)
vim.api.nvim_set_keymap("i", "}", "}<C-g>u", keybindingOpts)
vim.api.nvim_set_keymap("i", "{", "{<C-g>u", keybindingOpts)
vim.api.nvim_set_keymap("i", "[", "[<C-g>u", keybindingOpts)
vim.api.nvim_set_keymap("i", "]", "]<C-g>u", keybindingOpts)

-- Delete buffer
vim.api.nvim_set_keymap("n", "<leader>q", ":bdelete<CR>", keybindingOpts)

-- Navigate buffers
vim.api.nvim_set_keymap("n", "<tab>", ":bnext<CR>", keybindingOpts)
vim.api.nvim_set_keymap("n", "<s-tab>", ":bprev<CR>", keybindingOpts)

