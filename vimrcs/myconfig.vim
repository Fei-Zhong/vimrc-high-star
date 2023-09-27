" undodir
set noswapfile
set nobackup
set undodir=~\vimfiles\undodir  "directory where the undo files will be stored

if !isdirectory(&undodir)
  call mkdir(&undodir, 'p', 0700)
endif

" set font
set guifont=Courier_New:b:h12
