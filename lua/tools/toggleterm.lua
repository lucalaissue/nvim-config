require("toggleterm").setup()

-- Terminal
vim.api.nvim_set_keymap("n", "<leader>tt", ":ToggleTerm<CR>",                 {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tf", ":ToggleTerm direction=float<CR>", {noremap = true, silent = true})

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction="tab", close_on_exit=true })
function Lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>G", "<cmd>lua Lazygit_toggle()<CR>", {noremap = true, silent = true})
