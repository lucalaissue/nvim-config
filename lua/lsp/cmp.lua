local cmp = require("cmp")
local lspkind = require("lspkind")

-- Complete options
vim.opt.completeopt = {"menu", "menuone", "preview", "noselect"}
cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	window = {
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		format = lspkind.cmp_format()
	},
	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-k>'] = cmp.mapping.select_prev_item(),
		['<C-j>'] = cmp.mapping.select_next_item(),
		['<TAB>'] = cmp.mapping.confirm({ select = true })
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'vsnip' },
	}, {
		{ name = 'buffer' },
	})
})

