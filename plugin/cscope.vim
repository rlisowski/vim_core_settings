if has("cscope")
  " set csprg=/usr/local/bin/cscope
  set csto=0
  set cst
  cs kill -1
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
    " else add database pointed to by environment
  elseif filereadable(".git/cscope.out")
    cs add ".git/cscope.out"
    " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
  cs reset
  set csverb
endif

