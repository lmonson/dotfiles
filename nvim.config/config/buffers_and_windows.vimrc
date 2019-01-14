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



"=====================================================
 "" Comfortable Motion Settings
 "=====================================================
 let g:comfortable_motion_scroll_down_key = "j"
 let g:comfortable_motion_scroll_up_key = "k"
 let g:comfortable_motion_no_default_key_mappings = 1
 let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.
 nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
 nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
 nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
 nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>


 tab sball
 set switchbuf=useopen
 set laststatus=2
 nmap <F9> :call SwitchToNextBuffer(1)<CR>
 nmap <F10> :call SwitchToNextBuffer(-1)<CR>
 nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>


