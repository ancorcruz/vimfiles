" Start without the toolbar
set guioptions=aAce

" Use console dialogs
set guioptions+=c

" Include user's local vim config
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
