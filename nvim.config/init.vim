
" ============================================================================
" Python setup for neovim
" ============================================================================
let g:python_host_prog = '/Users/lmonson/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/lmonson/.pyenv/versions/neovim3/bin/python'

"    set runtimepath^=~/.vim runtimepath+=~/.vim/after
"    let &packpath = &runtimepath
"    source ~/.vimrc

" Plugins that I might want to include 
" fugitive  - git wrapper
" unite replaced by denite
" fzf
" easy motion
" sneak
" ultisnips
" a debugger
" snippits and/or support to Dash snippets/api lookup
"
"


" ============================================================================
" General switch settings
" ============================================================================
set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set encoding=utf-8          " Default do utf-8 for all files
"set cc=80                   " set an 80 column border for good coding style

filetype off



" ============================================================================
" Turn on "true colors" modes
" ============================================================================
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif


" ============================================================================
" Load plugins here
" ============================================================================
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/plugged')            " required
Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================

" Color themes
Bundle 'drewtempelmeyer/palenight.vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'rakr/vim-one'
Plugin 'lifepillar/vim-solarized8'

"Plugin 'dracula/vim'
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'

" Status bar
Plugin 'itchyny/lightline.vim'

" Vertical bars at indentation levels
Plugin 'Yggdroot/indentLine'
"

" Better code folding than that build into vim/neovim
Plugin 'tmhedberg/SimpylFold'

" Better auto indentation
Plugin 'vim-scripts/indentpython.vim'

" Code level auto complete
Bundle 'Valloric/YouCompleteMe', { 'do': './install.py' }

" NerdTree
Plugin 'scrooloose/nerdtree'

" NerdTree GIT plugin (show git status in nerdtree)
Plugin 'Xuyuanp/nerdtree-git-plugin'

" ===================
" end of plugins
" ===================
call vundle#end()               " required
filetype plugin indent on       " required


" ============================================================================
" Choose Color schemes
" ============================================================================

" Choose palenight
"set background=dark
"colorscheme palenight
"let g:lightline.colorscheme = 'palenight'

" Choose ayu
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

" Choose nord
" colorscheme nord

" Choose one
"colorscheme one
"set background=dark
"set background=light

" Choose solarized
set background=dark
colorscheme solarized8
"let g:lightline.colorscheme = 'solarized8'
" colorscheme solarized8_low
" colorscheme solarized8_high
" colorscheme solcarized_flat

" ============================================================================
" Configuration for 'Yggdroot/indentLine'
"    show indent levels with, say, vertical bars
" ============================================================================
" IndentLine {{
let g:indentLine_setConceal = 0   "Don't conceal characters, like quotes in json files
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
"" }}


" ============================================================================
" Screen splitting
" ============================================================================
set splitbelow
set splitright

" Window creation/deletion
nnoremap <c-s> :sp<space>
nnoremap <c-v> :vs<space>
nnoremap <c-o> <c-w>o

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Window sizing 
nnoremap + <C-w>+
nnoremap - <C-w>-
nnoremap = <c-w>=
nnoremap <  <c-w><
nnoremap > <c-w>>

" Window manipulation
function! SwitchToNextBuffer(incr)
  let help_buffer = (&filetype == 'help')
  let current = bufnr("%")
  let last = bufnr("$")
  let new = current + a:incr
  while 1
    if new != 0 && bufexists(new) && ((getbufvar(new, "&filetype") == 'help') == help_buffer)
      execute ":buffer ".new
      break
    else
      let new = new + a:incr
      if new < 1
        let new = last
      elseif new > last
        let new = 1
      endif
      if new == current
        break
      endif
    endif
  endwhile
endfunction
nnoremap <silent> <Tab> :call SwitchToNextBuffer(1)<CR>
nnoremap <silent> <S-Tab> :call SwitchToNextBuffer(-1)<CR>

" Remember these split commands
" "Max out the height of the current split
"ctrl + w _
"Max out the width of the current split
"ctrl + w |
"Normalize all split sizes, which is very handy when resizing terminal
"ctrl + w =
"Swap top/bottom or left/right split
"Ctrl+W R
"Break out current window into a new tabview
"Ctrl+W T
"Close every window in the current tabview but the current one
"Ctrl+W o

" ============================================================================
" Code folding
" ============================================================================
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
let g:SimplyFold_docstring_preview=1

" ============================================================================
" NerdTree configuration
" ============================================================================

" Open NerdTree automatically when nvim starts if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Map control-n to show/hide nerdtree plugin
map <C-n> :NERDTreeToggle<CR>

 
" ============================================================================
" Nerdtree-git-plugin configuration
" ============================================================================
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" This config can be computationally expensive
let g:NERDTreeShowIgnoredStatus = 1

" ============================================================================
" Enable folding
" Enable folding
" Python specific configurations
" ============================================================================
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" ============================================================================
" Terminal configuration
" ============================================================================

" Use Zsh
:set shell=/usr/local/bin/zsh

" Map escape key to exit insert mode in the terminal
tnoremap <Esc> <C-\><C-n>

"Map the window switch commands for when we are in terminal mode
tnoremap <C-j> <c-\><c-n><c-w>j
tnoremap <C-k> <c-\><c-n><c-w>k
tnoremap <C-h> <c-\><c-n><c-w>h
tnoremap <C-l> <c-\><c-n><c-w>l


