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



