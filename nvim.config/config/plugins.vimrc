"   Initialize plugin system
"-------------------=== Code/Project navigation ===-------------
set rtp+=$HOME/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/plugged')
Plugin 'VundleVim/Vundle.vim'  " required


"-------------------=== Code/Project navigation ===-------------
Plugin 'scrooloose/nerdtree'                " Project and file navigation
Plugin 'Xuyuanp/nerdtree-git-plugin'        " NerdTree git functionality
Plugin 'majutsushi/tagbar'                  " Class/module browser
Plugin 'vim-ctrlspace/vim-ctrlspace'        " Tabs/Buffers/Fuzzy/Workspaces/Bookmarks
Plugin 'mileszs/ack.vim'                    " Ag/Grep
Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
Plugin 'yuttie/comfortable-motion.vim'      " Smooth scrolling
Plugin 'MattesGroeger/vim-bookmarks'        " Bookmarks
Plugin 'thaerkh/vim-indentguides'           " Visual representation of indents
Plugin 'neomake/neomake'                    " Asynchronous Linting and Make Framework
Plugin 'Shougo/deoplete.nvim'               " Asynchronous Completion
Plugin 'roxma/nvim-yarp'                    " Deoplete Dependency #1
Plugin 'roxma/vim-hug-neovim-rpc'           " Deoplete Dependency #2

"-------------------=== Other ===-------------------------------
Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
Plugin 'flazz/vim-colorschemes'             " Colorschemes
Plugin 'vimwiki/vimwiki'                    " Personal Wiki
Plugin 'jreybert/vimagit'                   " Git Operations
Plugin 'kien/rainbow_parentheses.vim'       " Rainbow Parentheses
Plugin 'chriskempson/base16-vim'            " Base 16 colors
Plugin 'ryanoasis/vim-devicons'             " Dev Icons

"-------------------=== Snippets support ===--------------------
Plugin 'garbas/vim-snipmate'                " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
Plugin 'tomtom/tlib_vim'                    " dependencies #2
Plugin 'honza/vim-snippets'                 " snippets repo

"-------------------=== Languages support ===-------------------
Plugin 'scrooloose/nerdcommenter'           " Easy code documentation
Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
Plugin 'w0rp/ale'
Plugin 'godlygeek/tabular'                  " Helps with formatting things (like markdown tables)
Plugin 'plasticboy/vim-markdown'            " Markdown support

"-------------------=== Python  ===-----------------------------
Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'mitsuhiko/vim-python-combined'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'jmcantrell/vim-virtualenv'


"-------------------=== End of plugins  ===-----------------------------
call vundle#end()                           " required
filetype on
filetype plugin on
filetype plugin indent on




"-------------------=== Ideas for other plugins are commented out below  ===-----------------------------

            "-------------------=== Color themes ===-----------------------------
            " Bundle 'drewtempelmeyer/palenight.vim'
            " Plugin 'ayu-theme/ayu-vim'
            " Plugin 'arcticicestudio/nord-vim'
            " Plugin 'rakr/vim-one'
            " Plugin 'lifepillar/vim-solarized8'
            " Plugin 'dracula/vim'
            " Plugin 'jnurmine/Zenburn'
            " Plugin 'altercation/vim-colors-solarized'

            "-------------------=== Status bars ===-----------------------------
            " Plugin 'itchyny/lightline.vim'

            "-------------------=== Code formatting ===-----------------------------
            " Plugin 'tmhedberg/SimpylFold'
            " Bundle 'Valloric/YouCompleteMe', { 'do': './install.py' }
            " Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
            "" fake8 for conformity to pip 8
            " Plugin 'nvie/vim-flake8'
            " Syntastic for syntax highlighting
            " Plugin 'vim-syntastic/syntastic'
            " Plugin 'ntpeters/vim-better-whitespace'
            "" Plugin 'junegunn/limelight.vim'
            " Plugin 'junegunn/goyo.vim'
            " Plugin 'tmhedberg/SimpylFold'
            " Plugin 'vim-scripts/indentpython.vim'
            " Plugin 'Vimjas/vim-python-pep8-indent'
            " Plugin 'Yggdroot/indentLine'  "Show indentation level with vertical bars
            " Plugin 'thaerkh/vim-indentguides'



            "-------------------=== Directory tree ===-----------------------------
            " Plugin 'scrooloose/nerdtree'
            " NerdTree GIT plugin (show git status in nerdtree)
            " Plugin 'Xuyuanp/nerdtree-git-plugin'

            "-------------------=== Other tools ===-----------------------------
            " Plugin 'vimwiki/vimwiki'
            " Plugin 'tpope/vim-fugitive'
            " Plugin 'ctrlpvim/ctrlp.vim'

