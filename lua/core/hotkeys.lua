
-- устанавливаетм пробел как лидер клавишу
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Save and quit' })

vim.keymap.set('n', '<C-j>', '<C-d>', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-u>', { silent = true })

vim.keymap.set('n', '<leader>h', '<C-w>h', { silent = true })
vim.keymap.set('n', '<leader>l', '<C-w>l', { silent = true })
vim.keymap.set('n', '<leader>j', '<C-w>j', { silent = true })
vim.keymap.set('n', '<leader>k', '<C-w>k', { silent = true })

vim.keymap.set({'n', 'i'}, '<leader>n', ':Neotree left<CR>', { noremap = true, silent = true }) -- Открытие neotree слева
vim.keymap.set({'n', 'i'}, '<leader>f', ':Neotree float<CR>', { noremap = true, silent = true }) -- Открылие Neotree В плавающем окне

vim.keymap.set({"n", "v"}, "<leader>y", '"+y', { silent = true })
vim.keymap.set({"n", "v"}, "<leader>p", '"+p', { silent = true })
vim.keymap.set({"n", "v"}, "<leader>d", '"+d', { silent = true })

-- Отключение стрелок
vim.keymap.set('n', '<Up>', '<NOP>')
vim.keymap.set('n', '<Down>', '<NOP>')
vim.keymap.set('n', '<Left>', '<NOP>')
vim.keymap.set('n', '<Right>', '<NOP>')
