require('lspconfig')['rust_analyzer'].setup({
    on_attach = function (_, bufnr)
        require("lsp.lsp_utils").bindkeymaps(bufnr)
    end,
    capabilities = require("lsp.lsp_utils").capabilities,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})

