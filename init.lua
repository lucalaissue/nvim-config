require("packages")
vim.opt.encoding = "utf-8"
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.encoding = "utf-8"
vim.opt.termguicolors = true

require("monokai").setup { palette = require("monokai").pro }
-- lsp
require("cmp-config")
require("lsp-colors-config")
require("lsp")
require("lualine-config")
-- require("bufferline-config")
require("keybindings")
require("toggleterm-config")
require("nvimtree-config")
require("telescope-config")
require("indent-blankline-config")

