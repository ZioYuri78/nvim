vim.g.mapleader = " "
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<C-s>'    , ':split<CR>')
vim.keymap.set('n', '<M-Right>', ':vertical resize +1<CR>')
vim.keymap.set('n', '<M-Left>' , ':vertical resize -1<CR>')
vim.keymap.set('n', '<M-Up>'   , ':resize +1<CR>')
vim.keymap.set('n', '<M-Down>' , ':resize -1<CR>')
vim.keymap.set('n', '<C-t>'    , ':split<CR>:terminal<CR>:startinsert<CR>')
vim.keymap.set('n', '<leader>e' , ':lua vim.diagnostic.open_float(0, {scope="line"})<CR>')
