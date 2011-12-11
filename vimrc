set number          "add line numbers
set encoding=utf8   "use UTF8 encoding
set paste
set ruler

" Whitespace stuff
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set wrap

" Pathogen plugin
call pathogen#infect()
syntax on
filetype plugin indent on


" Load solarized colorscheme
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme solarized



silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>



" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
