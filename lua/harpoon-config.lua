require("harpoon").setup()

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

