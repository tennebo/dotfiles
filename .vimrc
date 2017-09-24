" .vimrc
"
" To use this file, copy it to (or source it from)
"       Unix:     ~/.vimrc
"       Windows:  $env:USERPROFILE\.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
    finish
endif

if v:progname =~? "gvim"
    behave mswin
    set lines=36
    set columns=80
    " For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
    let &guioptions = substitute(&guioptions, "t", "", "g")
 
    " Switch on search pattern highlighting.
    set hlsearch
endif

if has('win32') || has('win64')
    set runtimepath^=~/.vim  " use .vim on Windows, too
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" File related settings
set exrc                " enable reading rc files in current directory
set noshortname         " don't use DOS 8.3 filenames
set nobackup		" don't keep backup file
set nowritebackup
set fileformats=dos,unix
set history=1		" keep n lines of command line history
set viminfo=

" Edit settings
set backspace=indent,eol,start  " backspacing over everything in insert mode
set ruler	    	" show the cursor position all the time
set showcmd		" display incomplete commands
set autoindent		" always set autoindenting on
set incsearch		" do incremental searching
set display=uhex	" show unprintable characters
set scrolloff=2         " lines around cursor when scrolling
set title               " show info in window title
set visualbell
set showmatch
set matchtime=2

" TAB settings
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set softtabstop=4
set expandtab
set shiftround

" Fix backspace
map!  <BS>

" Don't use Ex mode, use Q for formatting
map Q gq

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
" vnoremap p "_dp

" Switch syntax highlighting on when the terminal has colors
if &t_Co > 2 || has("gui_running")
    syntax on
    set background=dark
    " https://github.com/altercation/vim-colors-solarized
    colorscheme solarized
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=78

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

endif " has("autocmd")

