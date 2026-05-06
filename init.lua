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
-- Базовые настройки nvim
-------------------------------------
vim.opt.clipboard = 'unnamedplus'
vim.opt.termguicolors = true
vim.cmd('syntax on')
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = {'utf-8'}
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 3
vim.opt.background = 'dark'
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.wrap = false
vim.opt.ruler = true
vim.opt.mouse = 'a'
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Поддержка undercurl для LSP
vim.cmd("let &t_Cs='\\e[6m'")  -- Подчёркивание
vim.cmd("let &t_Ce='\\e[59m'") -- Конец подчёркивания

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

-------------------------------------
-- Плагины (Lazy.nvim)
-------------------------------------
require('lazy').setup({
  -- Файловый менеджер
  {'nvim-neo-tree/neo-tree.nvim', branch = 'v3.x'},
  {'nvim-lua/plenary.nvim'},
  {'nvim-tree/nvim-web-devicons'},
  {'MunifTanjim/nui.nvim'},
  {'antosha417/nvim-lsp-file-operations'},
  {'s1n7ax/nvim-window-picker'},

  -- Синтаксис и редактирование
  {'ap/vim-css-color'},
  {'nvim-treesitter/nvim-treesitter'},
  {'editorconfig/editorconfig-vim'},
  {'tpope/vim-commentary'},
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  -- UI и интерфейс
  {'folke/which-key.nvim'},
  {'nvim-lualine/lualine.nvim'},
  {'folke/noice.nvim'},
  {'akinsho/bufferline.nvim'},
  {'josstei/whisk.nvim'},
  {'ecthelionvi/NeoView.nvim'},


  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'},
  {'hrsh7th/nvim-cmp'},
  {'williamboman/mason.nvim'},

  -- Темы
  {'bluz71/vim-moonfly-colors'}
})

vim.cmd("colorscheme moonfly")

-------------------------------------
-- Подключаем lua конфиги
-------------------------------------
require('plugins.lualine')
require('plugins.treesitter')
require('plugins.neotree')
require('plugins.bufferline')
require('plugins.noise')
require('plugins.which-key')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.mason')
require('plugins.ibl')

-------------------------------------
-- Горячие клавиши
-------------------------------------
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j>', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
vim.keymap.set({'n', 'i'}, '<C-n>', ':Neotree left<CR>', { noremap = true, silent = true })
vim.keymap.set({'n', 'i'}, '<C-f>', ':Neotree float<CR>', { noremap = true, silent = true })

-- Отключение стрелок
vim.keymap.set('n', '<Up>', '<NOP>')
vim.keymap.set('n', '<Down>', '<NOP>')
vim.keymap.set('n', '<Left>', '<NOP>')
vim.keymap.set('n', '<Right>', '<NOP>')

-------------------------------------
-- Neotree автозапуск
-------------------------------------
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.api.nvim_win_get_width(0) >= 150 then
      vim.cmd("Neotree")
      vim.cmd("wincmd p")
    end
  end,
})
