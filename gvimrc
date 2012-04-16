set guioptions=aAce     " Start without the toolbar
set guioptions-=T       " No toolbar
set guioptions+=c       " Use console dialogs
set showtabline=2       " Show the tabsbar always

set linespace=1

colorscheme vilight

" Setup tab labels with tab number, buffer name, number of windows
function! GuiTabLabel()
  let label = ''
  let bufnrlist = tabpagebuflist(v:lnum)
  " Add '+' if one of the buffers in the tab page is modified
  for bufnr in bufnrlist
    if getbufvar(bufnr, "&modified")
      let label = '+'
      break
    endif
  endfor
  " Append the tab number
  let label .= v:lnum.': '
  " Append the buffer name
  let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
  if name == ''
    " give a name to no-name documents
    if &buftype=='quickfix'
      let name = '[Quickfix List]'
    else
      let name = '[No Name]'
    endif
  else
    " get only the file name
    let name = fnamemodify(name,":t")
  endif
  let label .= name
  " Append the number of windows in the tab page
  let wincount = tabpagewinnr(v:lnum, '$')
  return label . '  [' . wincount . ']'
endfunction
set guitablabel=%{GuiTabLabel()}

" Setup tab tooltips with every buffer name
function! GuiTabToolTip()
  let tip = ''
  let bufnrlist = tabpagebuflist(v:lnum)
  for bufnr in bufnrlist
    " separate buffer entries
    if tip!=''
      let tip .= " \n "
    endif
    " Add name of buffer
    let name=bufname(bufnr)
    if name == ''
      " give a name to no name documents
      if getbufvar(bufnr,'&buftype')=='quickfix'
        let name = '[Quickfix List]'
      else
        let name = '[No Name]'
      endif
    endif
    let tip.=name
    " add modified/modifiable flags
    if getbufvar(bufnr, "&modified")
      let tip .= ' [+]'
    endif
    if getbufvar(bufnr, "&modifiable")==0
      let tip .= ' [-]'
    endif
  endfor
  return tip
endfunction
set guitabtooltip=%{GuiTabToolTip()}


if has("gui_macvim")
  set guifont=Monaco:h14

  " Key mappings
  " Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt
else
  set guifont=DejaVu\ Sans\ Mono\ 14

  " Key mappings
  " Alt-# to switch tabs
  map  <A-0> 0gt
  imap <A-0> <Esc>0gt
  map  <A-1> 1gt
  imap <A-1> <Esc>1gt
  map  <A-2> 2gt
  imap <A-2> <Esc>2gt
  map  <A-3> 3gt
  imap <A-3> <Esc>3gt
  map  <A-4> 4gt
  imap <A-4> <Esc>4gt
  map  <A-5> 5gt
  imap <A-5> <Esc>5gt
  map  <A-6> 6gt
  imap <A-6> <Esc>6gt
  map  <A-7> 7gt
  imap <A-7> <Esc>7gt
  map  <A-8> 8gt
  imap <A-8> <Esc>8gt
  map  <A-9> 9gt
  imap <A-9> <Esc>9gt
endif

" Include user's local vim config
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
