-------------------------------------
-- Базовые настройки nvim
-------------------------------------

-- vim.opt.clipboard = 'unnamedplus'  -- Синхронизация с системным буфером обмена (закомментировано)

vim.opt.termguicolors = true       -- Включение 24-битных цветов для тем
vim.cmd('syntax on')               -- Включение подсветки синтаксиса
vim.opt.encoding = 'utf-8'         -- Кодировка редактора UTF-8
vim.opt.fileencodings = {'utf-8'}  -- Кодировки файлов для чтения (только UTF-8)
vim.opt.number = true              -- Показ номеров строк
vim.opt.relativenumber = true      -- Относительные номера строк (удобно для движений по vim-командам)
vim.opt.scrolloff = 3              -- Отступ от края экрана при скролле (3 строки)
vim.opt.background = 'dark'        -- Темная тема (влияет на цвета подсветки)
-- Отступы и табуляция
vim.opt.expandtab = true           -- Преобразование табов в пробелы
vim.opt.tabstop = 4                -- Ширина табуляционного символа (4 пробела)
vim.opt.shiftwidth = 4             -- Ширина отступов (4 пробела)
vim.opt.softtabstop = 4            -- Чувствительная ширина табуляции при вводе
vim.opt.wrap = false               -- Отключение переноса длинных строк
vim.opt.ruler = true               -- Показ курсора (строка, столбец) в статусной строке
vim.opt.mouse = 'a'                -- Включение мыши во всех режимах
-- Разделение окон
vim.opt.splitbelow = true          -- Новые окна снизу (horizontal split)
vim.opt.splitright = true          -- Новые окна справа (vertical split)
vim.opt.cursorline = true          -- Подсветка текущей строки

-- Поддержка undercurl для LSP
vim.cmd("let &t_Cs='\\e[6m'")  -- Подчёркивание
vim.cmd("let &t_Ce='\\e[59m'") -- Конец подчёркивания

vim.lsp.config('ts_ls', {})
vim.lsp.enable('ts_ls')

-- LSP диагностика (undercurl)
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = 'Red' })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = 'Yellow' })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = 'Blue' })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = 'Green' })

vim.diagnostic.config({
  underline = true,
  virtual_text = false,
  signs = true,
})

---------------------
-- Lazy плагины 
---------------------
require('core.lazy_plugins')

-------------------------------------
-- Подключаем lua конфиги
-------------------------------------
require('plugins.lualine')
require('plugins.treesitter')
require('plugins.neotree')
require('plugins.noise')
require('plugins.which-key')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.mason')
require('plugins.ibl')
 
-------------------------------------
-- Горячие клавиши
-------------------------------------
require('core.hotkeys')

-----------
-- Theme
-----------
vim.cmd("colorscheme moonfly")
