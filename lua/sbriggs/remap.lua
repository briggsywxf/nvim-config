vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', ":m +1<CR>")
vim.keymap.set('n', 'K', ":m -2<CR>")

vim.keymap.set('x', '<leader>p', "\"_dP")

vim.keymap.set('n', 'Q', '<nop>')

vim.keymap.set('n', ';', ':')
