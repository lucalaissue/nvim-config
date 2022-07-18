require("packer").use {
	'nvim-telescope/telescope.nvim',
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		vim.api.nvim_set_keymap("n", "<leader>f", ":lua require'utils/telescope-functions'.project_files()<CR>", {noremap = true, silent = true})

		-- Telescope
		telescope.setup{
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
					}
				},
				layout_config = {
					horizontal = {width = 0.9},
				}
			}
		}
	end
}

