let g:ycm_autoclose_preview_window_after_completion=1  "Go away when we are dong
let mapleader=","
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Let flake8 show stuff in the gutter
"let g:flake8_show_in_file=1
"let g:flake8_show_in_gutter=1

" Run pep8 check on every file write operation
"autocmd BufWritePost *.py call Flake8() 
let python_highlight_all=1
let g:syntastic_python_checkers = ['python','flake8']
let g:syntastic_aggregate_errors = 1
syntax on
"

