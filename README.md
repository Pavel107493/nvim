# Мой конфиг Neovim

Персональная конфигурация Neovim для Arch Linux с Hyprland. Оптимизирована для Python-разработки, Vim-энтузиаста. Использует Lua 

## 📦 Установка
git clone https://github.com/твой-username/nvim-config.git ~/.config/
nvim --headless +Lazy sync +quit
## 📁 Файловый менеджер
| Плагин | Функция |
|--------|---------|
| neo-tree.nvim | Древовидный файловый менеджер (v3.x) |
| plenary.nvim | Библиотека утилит (зависимость) |
| nvim-web-devicons | Иконки для файлов |
| nui.nvim | UI компоненты (зависимость NeoTree) |
| nvim-lsp-file-operations | Операции с файлами через LSP |
| nvim-window-picker | Выбор окна для NeoTree |

## ✨ Синтаксис и редактирование
| Плагин | Функция |
|--------|---------|
| vim-css-color | Предпросмотр цветов CSS |
| nvim-treesitter | Парсинг и подсветка синтаксиса |
| editorconfig-vim | Поддержка .editorconfig |
| vim-commentary | Быстрое комментирование gcc |
| indent-blankline.nvim | Отступы и виртуальные направляющие |

## 🎨 UI и интерфейс
| Плагин | Функция |
|--------|---------|
| which-key.nvim | Подсказки горячих клавиш |
| lualine.nvim | Статусбар внизу |
| noice.nvim | Красивые уведомления и сообщения |
| bufferline.nvim | Вкладки буферов сверху |
| whisk.nvim | Быстрое переключение буферов |
| NeoView.nvim | Плавающие окна и попапы |

## ⚙️ LSP и автодополнение
| Плагин | Функция |
|--------|---------|
| nvim-lspconfig | Конфигурация LSP серверов |
| cmp-nvim-lsp | Интеграция cmp с LSP |
| cmp-buffer | Дополнение из текущих буферов |
| cmp-path | Дополнение путей к файлам |
| cmp-cmdline | Дополнение в командной строке |
| nvim-cmp | Универсальный автодополнитель |
| mason.nvim | Установка LSP серверов |

## 🎭 Темы
| Плагин | Функция |
|--------|---------|
| vim-moonfly-colors | Тёмная те
