let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
command! -nargs=1 IncScript exec 'so '. fnameescape(s:home."/<args>")
exec 'set rtp+='. fnameescape(s:home)
exec 'set rtp+=~/.vim'

IncScript vimrcs/basic.vim
IncScript vimrcs/filetypes.vim
"IncScript vimrcs/plugins_config.vim
IncScript vimrcs/extended.vim
IncScript vimrcs/myconfig.vim
