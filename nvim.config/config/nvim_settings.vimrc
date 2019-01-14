
if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
endif


set nocompatible                            " Disable compatibility to old-time vi
set showmatch                               " Show matching brackets.
set ignorecase                              " Do case insensitive matching
set mouse=v                                 " middle-click paste with mouse
set hlsearch                                " highlight search results
set tabstop=4                               " number of columns occupied by a tab character
set softtabstop=4                           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab                               " converts tabs to white space
set shiftwidth=4                            " width for autoindents
set autoindent                              " indent a new line the same amount as the line just typed
set number                                  " add line numbers
set wildmode=longest,list                   " get bash-like tab completions
set encoding=utf-8                          " Default do utf-8 for all files
"set cc=80                                  " set an 80 column border for good coding style
set invspell                                " Turn on spell checking and highlighting
set hidden
set showtabline=0
filetype off
set encoding=utf-8                          " Default files to utf-8 encoding
syntax enable                               " enable syntax highlighting

set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}
set encoding=utf-8                          " utf-8 by default
set enc=utf-8	                            " utf-8 by default
set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files
set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?
set scrolloff=20                            " let 10 lines before/after cursor during scroll
set clipboard=unnamed                       " use system clipboard
set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...

set incsearch                               " Incremental search
set hlsearch                                " highlight search results


