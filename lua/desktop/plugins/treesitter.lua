return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {
                'lua', 'javascript', 'typescript',
                'html', 'css', 'python', 'yaml',
                'dockerfile'
            },
            sync_install = false,
            auto_install = true,
            indent = { enable = true },
            highlight = {
                enable = true
            }
        })
    end
}
