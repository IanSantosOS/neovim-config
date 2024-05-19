vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Netrw tree" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- Mover a linha atual para baixo
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- Mover a linha atual para cima

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>") -- Mover para o painel/janela de cima
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>") -- Mover para o painel/janela de baixo
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>") -- Mover para o painel/janela da esquerda
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>") -- Mover para o painel/janela da direita
