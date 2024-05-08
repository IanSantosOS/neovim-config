return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        local dropdown = require('telescope.themes').get_dropdown({})

        vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})

        vim.keymap.set('n', '<leader>pb', builtin.buffers, {})

        vim.keymap.set('n', '<leader>pc', function() builtin.colorscheme(dropdown) end, {}) -- change keybind
        vim.keymap.set('n', '<leader>h', builtin.treesitter, {}) -- change keybind
    end
}
