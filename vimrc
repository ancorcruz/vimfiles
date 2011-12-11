set nocompatible    " We're running Vim, not Vi!

set number          "add line numbers
set encoding=utf8   "use UTF8 encoding
set nopaste         "paste mode on disable supertab plugin
set ruler

" Whitespace stuff
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set wrap linebreak nolist

" Some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

" Tab completion options
set wildmode=list:longest,list:full  "make cmdline tab completion similar to bash
set complete=.,w,t
set wildmenu                         "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,test/fixtures/*,vendor/gems/*,*~

" Key mappings
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

" Pathogen plugin
filetype off              " Needed so pathogen also loads ftdetect plugins.
call pathogen#infect()
call pathogen#helptags()
syntax on                 " Enable syntax highlighting
filetype on               " Enable filetype detection
filetype indent on        " Enable filetype-specific indenting
filetype plugin on        " Enable filetype-specific plugins

" Load colorscheme
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
