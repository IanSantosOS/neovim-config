return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        local capabilities = vim.tbl_deep_extend(
            "force", {},
            vim.lsp.protocol.make_client_capabilities(),
            require('cmp_nvim_lsp').default_capabilities()
        )

        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {
                'lua_ls', 'tsserver', 'html', 'cssls', 'emmet_ls',
            },
            handlers = {
                function (server_name)
                    require('lspconfig')[server_name].setup({
                        capabilities = capabilities
                    })
                end,
            }
        })
   end
}
