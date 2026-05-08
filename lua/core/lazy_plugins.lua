-------------------------------------
-- Bootstrap lazy.nvim
-------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-------------------------------------
-- Плагины (Lazy.nvim)
-------------------------------------
require('lazy').setup({
  -- Файловый менеджер
  {'nvim-neo-tree/neo-tree.nvim',      branch = 'v3.x'},  -- Древовидный файловый менеджер
  {'nvim-lua/plenary.nvim'},                                   -- Библиотека утилит Lua
  {'nvim-tree/nvim-web-devicons'},                             -- Иконки файлов
  {'MunifTanjim/nui.nvim'},                                    -- UI компоненты для Neo-tree
  {'antosha417/nvim-lsp-file-operations'},                     -- Операции с файлами через LSP
  {'s1n7ax/nvim-window-picker'},                               -- Выбор окон/сплитов

  -- Синтаксис и редактирование
  {'ap/vim-css-color'},                                        -- Предпросмотр CSS цветов
  {'nvim-treesitter/nvim-treesitter'},                         -- Парсинг и подсветка синтаксиса
  {'editorconfig/editorconfig-vim'},                           -- Поддержка .editorconfig
  {'tpope/vim-commentary'},                                    -- Комментирование кода (gcc)
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },  -- Отступы/гид

  -- UI и интерфейс
  {'folke/which-key.nvim'},                                    -- Подсказки хоткеев
  {'nvim-lualine/lualine.nvim'},                               -- Статусбар
  {'folke/noice.nvim'},                                        -- Улучшенные уведомления
  {'josstei/whisk.nvim'},                                      -- Быстрое переключение буферов
  {'ecthelionvi/NeoView.nvim'},                                -- Зум окон/просмотр
  {'farmergreg/vim-lastplace'},                                 -- Запоминает позицию курсора в файлах

  -- LSP и автодополнение
  {'neovim/nvim-lspconfig'},                                   -- Конфигурация LSP серверов
  {'hrsh7th/cmp-nvim-lsp'},                                    -- LSP источники для cmp
  {'hrsh7th/cmp-buffer'},                                      -- Буферы для автодополнения
  {'hrsh7th/cmp-path'},                                        -- Пути файлов для cmp
  {'hrsh7th/cmp-cmdline'},                                     -- Командная строка для cmp
  {'hrsh7th/nvim-cmp'},                                        -- Автодополнение
  {'williamboman/mason.nvim'},                                 -- Менеджер LSP серверов


  -- Темы
  {'bluz71/vim-moonfly-colors'},
})
