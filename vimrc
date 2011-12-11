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

" Pathogen plugin
call pathogen#infect()
syntax on               " Enable syntax highlighting
filetype on             " Enable filetype detection
filetype indent on      " Enable filetype-specific indenting
filetype plugin on      " Enable filetype-specific plugins

" Load solarized colorscheme
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Key mappings
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
