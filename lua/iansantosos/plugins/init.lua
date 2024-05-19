-- Separar em arquivos apenas aquelas configurações maiores e aqui no init.lua as configurações simples

return {
    {
        'theprimeagen/vim-be-good',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end
    },
}
