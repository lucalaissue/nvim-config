require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {
            on_attach = function (_, bufnr)
                require("lsp.lsp_utils").bindkeymaps(bufnr)
            end,
            capabilities = require("lsp.lsp_utils").capabilities,
        }
    end
}