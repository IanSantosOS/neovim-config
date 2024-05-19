--[[
-- put every built-in plugin you wanna disable here
local builtin_plugs = {
    '2html_plugin',
    'getscript',
    'getscriptPlugin',
    'gzip',
}

for i = 1, #builtin_plugs do
  g[ 'loaded_' .. builtin_plugs[i] ] true
end
--]]

vim.opt.number = true
vim.opt.relativenumber = true

-- vim.opt.scrolloff = 8
-- vim.opt.colorcolumn = '80' -- limite de caracteres
vim.opt.signcolumn = "yes"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.opt.swapfile = false
vim.opt.backup = false

-- Decide onde colocará a pasta de undodir
if vim.fn.has("win32") == 1 then
    vim.opt.undodir = vim.fn.expand("$HOME") .. "/AppData/Local/nvim/undodir"
else
    vim.opt.undodir = vim.fn.expand("$HOME") .. "/.vim/undodir"
end

vim.opt.undofile = true

-- Mudar o filetype do EJS para HTML
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.ejs",
    callback = function()
        vim.bo.filetype = "html"
    end,
})

-- Highlight quando está copiando (yanking) o texto
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Hightlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
