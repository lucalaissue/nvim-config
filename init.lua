require("packages")
vim.opt.encoding = "utf-8"
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.encoding = "utf-8"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.cmd 'colorscheme edge'
vim.cmd 'set nowrap'

-- Tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.cmd 'set noexpandtab'

-- Keybindings
require("keybindings")

-- LSP
require("lsp")
require("cmp-config")

-- Customization
require("lsp-colors-config")
require("lualine-config")
require("indent-blankline-config")

-- Tools
require("harpoon-config")
require("toggleterm-config")
require("nvimtree-config")
require("vgit-config")

