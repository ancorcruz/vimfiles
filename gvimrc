set guioptions=aAce     " Start without the toolbar
set guioptions+=c       " Use console dialogs

set guifont=DejaVu\ Sans\ Mono\ 11

" Include user's local vim config
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
