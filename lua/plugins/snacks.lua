" Функция для dashboard
function! Snacks_dashboard_pick(cmd, opts)
  " Замените на вашу команду поиска файлов/грипа и т.д.
  " Примеры для Telescope или fzf (адаптируйте под ваши плагины)
  if a:cmd == 'files'
    execute 'Telescope find_files'  " или :Files для fzf
  elseif a:cmd == 'live_grep'
    execute 'Telescope live_grep'   " или :Rg
  elseif a:cmd == 'oldfiles'
    execute 'Telescope oldfiles'    " или :History
  endif
endfunction

" Автокоманда для dashboard
autocmd VimEnter * ++nested call Snacks_dashboard()

function! Snacks_dashboard()
  " Очистка экрана и заголовок
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile
  enew
  set ft=SnacksDashboard
  call setline(1, [
    \ '██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z',
    \ '██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z    ',
    \ '██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z       ',
    \ '██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z         ',
    \ '███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║           ',
    \ '╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝           ',
    \ '',
    \ '    f  Find File           n  New File            g  Find Text',
    \ '    r  Recent Files          s  Restore Session    x  Lazy Extras',
    \ '  󰒲  l  Lazy                  q  Quit',
    \ ''
  \])
  nnoremap <buffer> f :call Snacks_dashboard_pick('files', {})<CR>
  nnoremap <buffer> n :ene \| startinsert<CR>
  nnoremap <buffer> g :call Snacks_dashboard_pick('live_grep', {})<CR>
  nnoremap <buffer> r :call Snacks_dashboard_pick('oldfiles', {})<CR>
  nnoremap <buffer> c :execute 'Telescope find_files cwd=' . stdpath('config')<CR>
  nnoremap <buffer> s :RestoreSession<CR>  " адаптируйте под ваш плагин сессий
  nnoremap <buffer> x :LazyExtras<CR>
  nnoremap <buffer> l :Lazy<CR>
  nnoremap <buffer> q :qa<CR>
  setlocal nomodifiable
endfunction

" Запуск dashboard при старте без аргументов
autocmd VimEnter * if argc() == 0 | call Snacks_dashboard() | endif
