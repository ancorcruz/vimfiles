set nocompatible    " We're running Vim, not Vi!

set updatetime=250  "reduce update time from 4s to 250ms
set number          "add line numbers
set relativenumber  "enable relative line numbers
set encoding=utf8   "use UTF8 encoding
set nopaste         "paste mode on disable supertab plugin
set ruler
set cursorline      "highlight current line

set colorcolumn=80  "show vertical line at 80 chars

set incsearch       "find the next match as we type the search
set hlsearch        "highlight searches by default

" Whitespace stuff
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set showbreak=...
set wrap linebreak nolist

" Highlight extra whitespace
set list listchars=tab:..,trail:·

" Some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

" Share clipboard between vim and OSX
set clipboard=unnamed

" Tab completion options
set wildmode=list:longest,list:full  "make cmdline tab completion similar to bash
set complete=.,w,t
set wildmenu                         "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,test/fixtures/*,vendor/gems/*,*~

" Statusline setup
let encoding = '[' . (&fenc==''?&enc:&fenc) . ((exists('+bomb') && &bomb) ? ',B' : '') . ']'
set statusline=%f                         "tail of the filename
set statusline+=%y                        "filetype
set statusline+=%{encoding}               "encoding
set statusline+=%{fugitive#statusline()}  "git branch
set statusline+=%m                        "modified flag
set statusline+=%{rvm#statusline()}       "rvm
set statusline+=%=                        "left/right separator
set statusline+=%c,                       "cursor column
set statusline+=%l/%L                     "cursor line/total lines
set statusline+=\ %P                      "percent through file
set laststatus=2

" Key mappings

:let mapleader=","

" Toggle NERDTree
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

" Clean out all trailing whitespace or tabs
nnoremap <silent> <Leader>c :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" Tab navigation
nnoremap <c-n> :tabnew<CR>
nmap <Tab> gt
nmap <S-Tab> gT

" Remove search highlighting
nnoremap <silent> <return> :nohl<CR>

" Toggle relative line numbers
nnoremap <silent> <Leader>n :set rnu! rnu?<CR>

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

" Ctrl-P plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<Leader>t'

" treat question marks as part of a word in ruby
autocmd BufRead *.rb,*.rake,*.rhtml,<ruby> set isk=?,@,48-57,_,192-255

" make external keypad work in terminal vim OSX!
map <Esc>Oq 1
map <Esc>Or 2
map <Esc>Os 3
map <Esc>Ot 4
map <Esc>Ou 5
map <Esc>Ov 6
map <Esc>Ow 7
map <Esc>Ox 8
map <Esc>Oy 9
map <Esc>Op 0
map <Esc>On .
map <Esc>OQ /
map <Esc>OR *
map <kPlus> +
map <Esc>OS -
map <Esc>OM <CR>
map! <Esc>Oq 1
map! <Esc>Or 2
map! <Esc>Os 3
map! <Esc>Ot 4
map! <Esc>Ou 5
map! <Esc>Ov 6
map! <Esc>Ow 7
map! <Esc>Ox 8
map! <Esc>Oy 9
map! <Esc>Op 0
map! <Esc>On .
map! <Esc>OQ /
map! <Esc>OR *
map! <kPlus> +
map! <Esc>OS -
map! <Esc>OM <CR>

" format JSON files
map <Leader>j :%!python -m json.tool<CR>

" Copy current filename to system clipboard
nnoremap <Leader>yf :let @*=expand("%:p")<cr>:echo "Copied file name to clipboard"<cr>

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
