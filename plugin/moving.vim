" http://jezenthomas.com/moving-to-the-beginning-of-the-line/

" Jump to end of line
noremap L $

" Jump to first character or column
noremap <silent> H :call FirstCharOrFirstCol()<cr>

function! FirstCharOrFirstCol()
  let current_col = virtcol('.')
  normal ^
  let first_char = virtcol('.')
  if current_col == first_char
    normal 0
  endif
endfunction
