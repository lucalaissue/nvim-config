vim.g.mapleader = " "

-- Hard mode
vim.api.nvim_set_keymap("n", "<Left>",  "", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Right>", "", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Up>",    "", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Down>",  "", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "<Left>",  "", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "<Right>", "", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "<Up>",    "", {noremap = true, silent = true})

-- Replace <C-{hjkl}> with arrows
vim.api.nvim_set_keymap("!", "<C-h>", "<Left>",  {noremap = true, silent = true})
vim.api.nvim_set_keymap("!", "<C-j>", "<Down>",  {noremap = true, silent = true})
vim.api.nvim_set_keymap("!", "<C-k>", "<Up>",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("!", "<C-l>", "<Right>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "<Down>",  "",      {noremap = true, silent = true})

-- Utils
vim.api.nvim_set_keymap("n", "<C-j>", "10jzz", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-k>", "10kzz", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "Y",     "y$",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "J",     "mzJ`z", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "N",     "Nzzzv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "n",     "nzzzv", {noremap = true, silent = true})

-- Undo checkpoints while inserting
vim.api.nvim_set_keymap("i", ",", ",<C-g>u",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", ".", ".<C-g>u",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "!", "!<C-g>u",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "(", "(<C-g>u",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", ")", ")<C-g>u",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "<", "<lt><C-g>u", {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", ">", "><C-g>u",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "}", "}<C-g>u",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "{", "{<C-g>u",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "[", "[<C-g>u",    {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "]", "]<C-g>u",    {noremap = true, silent = true})

-- Disable highlight after search
vim.api.nvim_set_keymap("c", "<CR>", "<CR>:noh<CR>", {noremap = true, silent = true})

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>f", ":lua require'telescope-config'.project_files()<CR>", {noremap = true, silent = true})

