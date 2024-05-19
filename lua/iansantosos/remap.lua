vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open Netrw tree' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- Mover a linha atual para baixo
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- Mover a linha atual para cima
