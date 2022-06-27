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

-- Bindings
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

-- NVimTree
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

-- Terminal
vim.api.nvim_set_keymap("n", "<leader>tt", ":ToggleTerm<CR>",                      {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tf", ":ToggleTerm direction=float<CR>",      {noremap = true, silent = true})

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>f", ":lua require'telescope-config'.project_files()<CR>", {noremap = true, silent = true})

-- Disable highlight after search
vim.api.nvim_set_keymap("c", "<CR>", "<CR>:noh<CR>", {noremap = true, silent = true})

-- Harpoon
vim.api.nvim_set_keymap("n", "<tab>",    ":lua require('harpoon.ui').nav_next()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<s-tab>",  ":lua require('harpoon.ui').nav_prev()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>+", ":lua require('harpoon.mark').add_file()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>=", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>5", ":lua require('harpoon.ui').nav_file(5)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>6", ":lua require('harpoon.ui').nav_file(6)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>7", ":lua require('harpoon.ui').nav_file(7)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>8", ":lua require('harpoon.ui').nav_file(8)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>9", ":lua require('harpoon.ui').nav_file(9)<CR>", {noremap = true, silent = true})

-- Git
vim.api.nvim_set_keymap("n", "<leader>gc", ":lua require('telescope.builtin').git_commits()<CR>", {noremap = true, silent = true})
