fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun

call SetupCommandAlias("W","w")
call SetupCommandAlias("bufo","BufOnly")
call SetupCommandAlias("bufo","BufOnly")
call SetupCommandAlias("F","CtrlSF")
call SetupCommandAlias("U","UndotreeToggle")
call SetupCommandAlias("dhb","DeleteHiddenBuffers")

" copy current buffer path
nmap cp :let @+ = expand("%:.")<CR>
