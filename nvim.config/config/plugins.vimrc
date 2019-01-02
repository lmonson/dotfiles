" ============================================================================
" Load plugins here
" ============================================================================
set rtp+=$HOME/.config/nvim/bundle/Vundle.vim
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
"Plugin 'itchyny/lightline.vim'

" Vertical bars at indentation levels

" Better code folding than that build into vim/neovim
"Plugin 'tmhedberg/SimpylFold'

" Better auto indentation

" Code level auto complete
Bundle 'Valloric/YouCompleteMe', { 'do': './install.py' }
"Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


" NerdTree
Plugin 'scrooloose/nerdtree'

" NerdTree GIT plugin (show git status in nerdtree)
"Plugin 'Xuyuanp/nerdtree-git-plugin'

" fake8 for conformity to pip 8
"Plugin 'nvie/vim-flake8'

" Syntastic for syntax highlighting
Plugin 'vim-syntastic/syntastic'

" Highlight bad whitespace at the end of lines
"Plugin 'ntpeters/vim-better-whitespace'

Plugin 'junegunn/limelight.vim'

Plugin 'junegunn/goyo.vim'

" VIM Wiki
Plugin 'vimwiki/vimwiki'

" Git
Plugin 'tpope/vim-fugitive'

Plugin 'ctrlpvim/ctrlp.vim'

" ============================================================================
" Plugins related to indentation level 
" ============================================================================
"Plugin 'vim-scripts/indentpython.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
"Plugin 'Yggdroot/indentLine'  "Show indentation level with vertical bars
Plugin 'thaerkh/vim-indentguides'

"
" ===================
" end of plugins
" ===================
call vundle#end()               " required
filetype plugin indent on       " required

