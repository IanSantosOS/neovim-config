return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
        require('catppuccin').setup()
        vim.cmd('colorscheme catppuccin-mocha')
    end
}

-- [light 00] catppuccin-latte
-- [dark  01] catppuccin-frappe
-- [dark  02] catppuccin-macchiato
-- [dark  03] catppuccin-mocha [or] catppuccin
