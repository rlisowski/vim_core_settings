" if has("cscope")
"   " set csprg=/usr/local/bin/cscope
"   set nocscopetag
"   set cscopequickfix=s-,c-,d-,i-,t-,e-
"   cs kill -1
"   set nocscopeverbose
"   " add any database in current directory
"   if filereadable("cscope.out")
"     cs add cscope.out
"     " else add database pointed to by environment
"   elseif filereadable(".git/cscope.out")
"     cs add .git/cscope.out
"     " else add database pointed to by environment
"   elseif $CSCOPE_DB != ""
"     cs add $CSCOPE_DB
"   endif
"   cs reset
"   set cscopeverbose

"   "TODO: figure out which of these are useless in Ruby and disable them.
"   nnoremap <Leader>fs :cscope find s <C-R>=expand("<cword>")<CR><CR>:botright cwindow<CR>
"   nnoremap <Leader>fg :cscope find g <C-R>=expand("<cword>")<CR><CR>:botright cwindow<CR>
"   nnoremap <Leader>fc :cscope find c <C-R>=expand("<cword>")<CR><CR>:botright cwindow<CR>
"   nnoremap <Leader>ft :cscope find t <C-R>=expand("<cword>")<CR><CR>:botright cwindow<CR>
"   nnoremap <Leader>fe :cscope find e <C-R>=expand("<cword>")<CR><CR>:botright cwindow<CR>
"   nnoremap <Leader>ff :cscope find f <C-R>=expand("<cfile>")<CR><CR>:botright cwindow<CR>
"   nnoremap <Leader>fd :cscope find d <C-R>=expand("<cword>")<CR><CR>:botright cwindow<CR>
"   nnoremap <Leader>fi :cscope find i ^<C-R>=expand("<cfile>")<CR>$<CR>:botright cwindow<CR>
"   "TODO: figure out how to get cstag output in quickfix or a popup menu.
"   map <C-_> :cstag <C-R>=expand("<cword>")<CR><CR>

"   function! CscopeRebuild()
"     cscope kill .git/cscope.out
"     silent execute "!./.git/hooks/cscope"
"     redraw!
"     if v:shell_error
"       echohl ErrorMsg | echo "Unable to run cscope command." | echohl None
"     else
"       if filereadable("cscope.out")
"         cs add cscope.out
"         " else add database pointed to by environment
"       elseif filereadable(".git/cscope.out")
"         cs add .git/cscope.out
"         " else add database pointed to by environment
"       elseif $CSCOPE_DB != ""
"         cs add $CSCOPE_DB
"       else
"         echohl ErrorMsg | echo "Unable to read cscope database." | echohl None
"       endif
"     endif
"   endfunction

"   command! Cscope call CscopeRebuild()
" endif
