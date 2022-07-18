-- Sync when
local fn = vim.fn
local plenary_path = fn.stdpath('data')..'/site/pack/packer/start/plenary.nvim'
if fn.empty(fn.glob(plenary_path)) > 0 then
	require("packer").sync()
end
