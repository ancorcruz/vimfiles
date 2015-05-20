# Ancor Cruz's vim distribution

## Usage

    git clone git://github.com/ancorcruz/vimfiles.git ~/.vim
    cd ~/.vim
    rake install

### Helptags

To generate tags at first usage of vim invoke:

    :Helptags

This makes all plugins documentations available thru :help

### Updating

    cd ~/.vim
    rake update


## Customization

Add your local customizations in ~/.vimrc.local and ~/.gvimrc.local


## Mappings

* Leader + p  => Toggle NERDTree
* Leader + c  => Clean out all trailing whitespace or tabs
* Leader + t  => Open Ctrl-P dialog
* Tab         => Next tab
* Shift + Tab => Previous tab
* Ctrl + n    => New tab
* Enter       => Remove search highlighting

* Leader + j  => Pretty format JSON file

* Leader + yf => Copy filename absolute path to the system clipboard

* Command + (1-9) => Switch tabs (MacVim)
* Alt + (1-9) => Switch tabs (gVim)

(Leader = ,)

## Bundled plugins

### Ctrl-P

The Ctrl-P plug-in for VIM provides an extremely fast, intuitive mechanism for opening files with a minimal number of keystrokes.

https://github.com/kien/ctrlp.vim.git

### delimitMate

Provides insert mode auto-completion for quotes, parens, brackets, etc

https://github.com/Raimondi/delimitMate

### Endwise

Wisely add "end" in ruby, endfunction/endif/more in vim script, etc

https://github.com/tpope/vim-endwise

### Fugitive

A Git wrapper so awesome.

https://github.com/tpope/vim-fugitive

### NerdTree

Tree explorer. Open with leader+p

http://www.vim.org/scripts/script.php?script_id=1658

### Pathogen

Makes it super easy to install plugins and runtime files in their own private directories.

https://github.com/tpope/vim-pathogen

### Rails

Rails support for vim

https://github.com/tpope/vim-rails

http://www.vim.org/scripts/script.php?script_id=1567

### Ruby

Ruby support for vim

https://github.com/vim-ruby/vim-ruby

https://github.com/vim-ruby/vim-ruby/wiki

### RVM

Switch Ruby versions from inside Vim

https://github.com/tpope/vim-rvm

### Solarized

Precision colors for machines and people

https://github.com/altercation/vim-colors-solarized

### Supertab

Pseudo auto-complete with tab

http://www.vim.org/scripts/script.php?script_id=1643

https://github.com/ervandew/supertab

### Syntastic

Syntax checking hacks for vim

https://github.com/scrooloose/syntastic/

http://www.vim.org/scripts/script.php?script_id=2736

### Vividchalk

A colorscheme strangely reminiscent of Vibrant Ink for a certain OS X editor

https://github.com/tpope/vim-vividchalk

## ToDo

* Add some mappings
* Add snipets
* And more

## Credits

Ancor Cruz's Vimfiles released under MIT License<br/>
Special thanks to Martin Grenfell, Fabio Akita, Tim Pope, Emili Parreño, etc.

