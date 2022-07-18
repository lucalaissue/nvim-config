require("packer").use {
	'nvim-lualine/lualine.nvim',
	requires = {'kyazdani42/nvim-web-devicons'},
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = true,
				component_separators = { left = '', right = ''},
				section_separators = { left = '', right = ''},
				disabled_filetypes = {},
				always_divide_middle = true,
				globalstatus = false,
				theme = "auto"
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_c = {'filename'},
				lualine_x = {'encoding', 'filetype'},
				lualine_y = {},
				lualine_z = {'location'}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			extensions = {}
		}
	end
}

