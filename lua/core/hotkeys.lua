-- устанавливаетм пробел как лидер клавишу
vim.g.mapleader = " "
vim.g.maplocalleader = " "


vim.keymap.set('n', '<C-w>s', '<C-w>s:enew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>v', '<C-w>v:enew<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-j>', '<C-d>', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-u>', { silent = true })

-- Маппинги для быстрого сохранения и выхода
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

-- Перемещение между окнами
vim.keymap.set('n', '<leader>h', '<C-w>h', { silent = true })
vim.keymap.set('n', '<leader>l', '<C-w>l', { silent = true })
vim.keymap.set('n', '<leader>j', '<C-w>j', { silent = true })
vim.keymap.set('n', '<leader>k', '<C-w>k', { silent = true })

-- Neotree
vim.keymap.set('n', '<leader>nn', ':Neotree left<CR>', { noremap = true, silent = true }) -- Открытие neotree слева
vim.keymap.set('n', '<leader>nf', ':Neotree float<CR>', { noremap = true, silent = true }) -- Открылие Neotree В плавающем окне

-- Открытие вкладки
vim.keymap.set('n', '<leader>t', ':tabe<CR>', { noremap = true, silent = true })

-- Копирование/вставка с системного буфера
vim.keymap.set({"n", "v"}, "<leader>y", '"+y', { silent = true })
vim.keymap.set({"n", "v"}, "<leader>p", '"+p', { silent = true })
vim.keymap.set({"n", "v"}, "<leader>d", '"+d', { silent = true })
vim.keymap.set('n', "<leader>a", 'ggVG', { silent = true })

-- Телескоп
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
