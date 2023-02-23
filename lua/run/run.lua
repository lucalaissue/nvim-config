local Terminal  = require('toggleterm.terminal').Terminal
local last_run = nil

vim.api.nvim_set_keymap("n", "<leader>R",  "<cmd>lua require('run.run').RunDefault()<CR>", {noremap = true, silent = true})

local M = {}
M.RunDefault = function()
	local filetype = vim.bo.filetype
	local filename = vim.fn.expand("%")
	local termops = {
		cmd = "echo No command set for filetype ["..filetype.."] for filename ["..filename.."].",
		hidden = true,
		direction="tab",
		close_on_exit=false
	}

	local projectcmd = M.CMD()
	if projectcmd then
		termops.cmd = projectcmd
	elseif filetype == "rust" then -- Rust
		termops.cmd = "cargo run"
	elseif filetype == "scala" or filetype == "sbt" then
		termops.cmd = "sbt run"
	elseif filetype == "python" then
		termops.cmd = "python "..filename
	end

	Terminal:new(termops):toggle()
end

M.CMD = function ()
	return nil
end

return M

