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
{ 'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
        'antosha417/nvim-lsp-file-operations',
        { 's1n7ax/nvim-window-picker', branch = 'v3.x' },
    }
},

{'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzf-native.nvim',
        "nvim-telescope/telescope-file-browser.nvim",
    }
},

-- Синтаксис и редактирование
{'ap/vim-css-color'},                                        -- Предпросмотр CSS цветов
{'nvim-treesitter/nvim-treesitter'},                         -- Парсинг и подсветка синтаксиса
{'editorconfig/editorconfig-vim'},                           -- Поддержка .editorconfig
{'tpope/vim-commentary'},                                    -- Комментирование кода (gcc)
{'lukas-reineke/indent-blankline.nvim', main = "ibl", opts = {} },  -- Отступы/гид
-- UI и интерфейс
{'dstein64/nvim-scrollview'},                                -- ползунок скроллинга как в привычных редакторах
{'folke/which-key.nvim'},                                    -- Подсказки хоткеев
{'nvim-lualine/lualine.nvim'},                               -- Статусбар
{'folke/noice.nvim'},                                        -- Улучшенные уведомления
{'josstei/whisk.nvim'},                                      -- Плавные анимашки
{'ecthelionvi/NeoView.nvim'},                                -- Зум окон/просмотр
{ 'rktjmp/lush.nvim' },                                      -- Библиотека для создания тем
-- LSP и автодополнение
{'neovim/nvim-lspconfig'},                                   -- Конфигурация LSP серверов
{'hrsh7th/cmp-nvim-lsp'},                                    -- LSP источники для cmp
{'hrsh7th/cmp-buffer'},                                      -- Буферы для автодополнения
{'hrsh7th/cmp-path'},                                        -- Пути файлов для cmp
{'hrsh7th/cmp-cmdline'},                                     -- Командная строка для cmp
{'hrsh7th/nvim-cmp'},                                        -- Автодополнение
{'williamboman/mason.nvim'},                                 -- Менеджер LSP серверов
{
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = function()
    return require("plugins.snacks")
  end,
},
-- Темы
  -- { "catppuccin/nvim" }, -- colorscheme catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
  { "bluz71/vim-moonfly-colors" }, -- colorscheme moonfly
  -- { "rebelot/kanagawa.nvim" }, -- colorscheme kanagawa-dragon, kanagawa-wave, kanagawa-lotus
  -- { "uloco/bluloco.nvim" }, -- colorscheme bluloco-dark
  -- { "folke/tokyonight.nvim" }, -- colorscheme tokyonight-night
  -- { "stevedylandev/ansi-nvim" }, -- colorscheme ansi
})
vim.cmd('colorscheme moonfly')

-------------------------------------
-- Подключаем lua конфиги
-------------------------------------
require('plugins.lsp')
require('plugins.mason')
require('plugins.cmp')
require('plugins.noise')
require('plugins.lualine')
require('plugins.which-key')
require('plugins.ibl')
require('plugins.treesitter')
require('plugins.neo-tree')
