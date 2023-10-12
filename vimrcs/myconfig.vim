" undodir
set noswapfile
set nobackup
set undodir=~\vimfiles\undodir  "directory where the undo files will be stored

if !isdirectory(&undodir)
  call mkdir(&undodir, 'p', 0700)
endif

" set font
set guifont=Courier_New:b:h12

" auto fullscreen
autocmd GUIEnter * simalt ~x

" vnoremap <leader>y  copy to system clipboard
vnoremap <leader>y "+y

" nnoremap <leader>c  copy online to system clipboard
nnoremap <leader>c 0vg_"+y

"change word to uppercase, I love this very much
inoremap <C-u> <esc>gUiwea

" set jj is Esc in insert mode
inoremap jj <Esc>

" 打开/关闭 list
noremap <silent> <leader>l :set list!<cr>

" 打开/关闭 number
noremap <silent> <leader>n :set nu!<cr>

" 打开/关闭 cursorline
noremap <silent> \cu :set cursorline!<cr>
