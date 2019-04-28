" =========================================================================== Python interpreter to use internally ========================================================== 
source $HOME/.config/nvim/config/nvim_python.vimrc

" ============================================================================ Load plugins here ============================================================================
source $HOME/.config/nvim/config/plugins.vimrc

"============================================================================ General switch settings =======================================================================
source $HOME/.config/nvim/config/nvim_settings.vimrc

"============================================================================ Choose Color schemes ==========================================================================
source $HOME/.config/nvim/config/colors.vimrc

"============================================================================ Screen motions, Screen splitting ==============================================================
source $HOME/.config/nvim/config/buffers_and_windows.vimrc

"============================================================================ Terminal configuration ========================================================================
source $HOME/.config/nvim/config/terminal.vimrc

" ============================================================================
" Neomake
" ============================================================================
" ============================================================================
" Tabstops, max line width, etc. for various file types
" ============================================================================
"source $HOME/.config/nvim/config/format_basic_python.vimrc

" ============================================================================
" Configure plugins
" ============================================================================
"source $HOME/.config/nvim/config/you_complete_me.vimrc
source $HOME/.config/nvim/config/airline.vimrc
source $HOME/.config/nvim/config/deoplete.vimrc
source $HOME/.config/nvim/config/devicons.vimrc
source $HOME/.config/nvim/config/indentguides.vimrc
source $HOME/.config/nvim/config/markdown.vimrc
source $HOME/.config/nvim/config/neomake.vimrc
source $HOME/.config/nvim/config/nerdcomment.vimrc
source $HOME/.config/nvim/config/nerdtree.vimrc
source $HOME/.config/nvim/config/pymode.vimrc
source $HOME/.config/nvim/config/rainbowparentheses.vimrc
source $HOME/.config/nvim/config/snipmate.vimrc
source $HOME/.config/nvim/config/tagbar.vimrc
"source $HOME/.config/nvim/config/indent_line.vimrc
"source $HOME/.config/nvim/config/simply_fold.vimrc


" ============================================================================
" Final, general settings
" ============================================================================
source $HOME/.config/nvim/config/mappings.vimrc



python3 << EOF
import vim
import git
def is_git_repo():
	try:
		_ = git.Repo('.', search_parent_directories=True).git_dir
		return "1"
	except:
		return "0"
vim.command("let g:pymode_rope = " + is_git_repo())
EOF
