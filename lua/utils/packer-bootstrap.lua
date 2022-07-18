local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	print("Installing packer...")
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	io.write(string.format("Packer.nvim installed. You may restart neovim now.\n"))
	os.exit(0)
end

return require("packer").startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'tpope/vim-sleuth'
end)

