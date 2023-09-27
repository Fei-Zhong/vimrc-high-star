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

" vmap <leader>c  copy to system clipboard
vnoremap <leader>c "+y


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

" Quickly find and open a file in the current working directory
let g:ctrlp_map = '<C-f>'
nnoremap <c-p> :CtrlP<cr>

" Quickly find and open a buffer
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


