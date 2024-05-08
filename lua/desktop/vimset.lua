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

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- vim.opt.colorcolumn = '80' -- limite de caracteres
