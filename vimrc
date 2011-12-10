set number	        "add line numbers
set encoding=utf8       "use UTF8 encoding

" Whitespace stuff
set tabstop=2
set softtabstop=2



" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
