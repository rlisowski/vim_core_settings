if exists('g:loaded_core_settings')
  finish
else
  let g:loaded_core_settings = 1
endif

filetype plugin indent on     " required!

set nocompatible
set hidden

set shell=/bin/zsh
" set shell=/bin/bash
set noexrc                     " don't use local version of .(g)vimrc, .exrc
set autoindent                 " Copy indent from current line when starting a new line
set autowriteall               " Automatically save before commands like :next and :make
set backspace=indent,eol,start " allow backspacing over everything in insert mode
if !has('nvim')
  set encoding=utf-8             " Use UTF-8 everywhere.
endif
set signcolumn=yes             " always show signcolumn

" ---------------
" Color
" ---------------
set background=dark
colorscheme codeschool
highlight clear SignColumn
if has("nvim")
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
set termguicolors

" ---------------
" Backups
" ---------------
set backup
set backupskip+=*.tmp,crontab.* " do not make backup for this files
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/tmp
set undofile
set undodir=$HOME/.vim/undodir

" ---------------
" UI
" ---------------
set ruler                           " show the cursor position all the time
set cursorline                      " Only have cursorline in current window

if has("balloon_eval") && has("unix")
  set ballooneval
endif
set breakindent                         " Every wrapped line will continue visually indented
let &showbreak='↖ '                     " String to put at the start of lines that have been wrapped.
set cmdheight=1                         " command line height
set complete-=i,w,b,u,t                 " Searching includes can be slow
set completeopt=longest,menuone,preview,noselect " A comma separated list of options for Insert mode completion
set display=lastline                    " Change the way text is displayed.
set joinspaces                          " Put spaces between lines joined with the > command.
set lazyredraw                          " Do not redraw the screen during macro execution.
set list                                " Useful to see the difference between tabs and spaces and for trailing blanks
set listchars=tab:▸\ ,eol:¬,trail:·,extends:❯,precedes:❮,nbsp:+ " Define how list mode appears, Use the same symbols as TextMate for tabstops and EOLs
" show trailing whitespace when not on insert mode
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:·
    au InsertLeave * :set listchars+=trail:·
augroup END
nmap <leader>l :set list!<CR>       " Shortcut to rapidly toggle `set list`
set modelines=5                     " Debian likes to disable this, The number of lines at the top and bottom to look for modelines.
set cpoptions+=$                    " show $ on the end of selection
set virtualedit=all                 " enable virtualedit, useful for visual block editing
set linespace=2                     " more space between lines
set guicursor+=a:blinkon0           " Disable gui cursor blinking
set guioptions-=e                   " use text tabs
set ttyfast                         " Indicates a fast terminal connection.
" disable visual bell
set visualbell
set t_vb=

" if exists('+colorcolumn')
"   set colorcolumn=120
" endif

" :w!! saves a file as root
cmap w!! w !sudo tee % >/dev/null<CR>
" fullscreen mode for gvim
map <silent> <F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

" https://neovim.io/doc/user/nvim_terminal_emulator.html#nvim-terminal-emulator-configuration
let g:terminal_color_0  = '#3b4251'
let g:terminal_color_1  = '#bf6069'
let g:terminal_color_2  = '#a3be8b'
let g:terminal_color_3  = '#eacb8a'
let g:terminal_color_4  = '#81a1c1'
let g:terminal_color_5  = '#b48dac'
let g:terminal_color_6  = '#88c0d0'
let g:terminal_color_7  = '#e5e9f0'
let g:terminal_color_8  = '#4c556a'
let g:terminal_color_9  = '#bf6069'
let g:terminal_color_10 = '#a3be8b'
let g:terminal_color_11 = '#eacb8a'
let g:terminal_color_12 = '#81a1c1'
let g:terminal_color_13 = '#b48dac'
let g:terminal_color_14 = '#8fbcbb'
let g:terminal_color_15 = '#eceef4'

" -------------
"  lang
" -------------
if exists("+spelllang")
  let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
  set spelllang=en_gb,pl
  set spell
endif

" ---------------
" Behaviors
" ---------------
syntax enable

set synmaxcol=500 " no syntax for very long lines

set hlsearch " When there is a previous search pattern, highlight all its matches.
set incsearch " While typing a search command, show where the pattern, as it was typed so far, matches.
noremap <Leader>/ :set invhls<CR> " toggle highlight

set diffopt+=internal,algorithm:patience
set omnifunc=syntaxcomplete#Complete
set textwidth=120
set autoread                    " Automatically reload changes if detected
set wildmenu                    " Turn on WiLd menu
set history=768                 " Number of things to remember in history.
set cf                          " Enable error files & error jumping.
set clipboard+=unnamedplus      " Yanks go on clipboard instead.
set autowrite                   " Writes on make/shell commands
set formatoptions=crql
set nrformats=
set suffixes+=.dvi              " Lower priority in wildcards
set showmatch                   " Show matching brackets.
set ignorecase                  " Ignoring case in a pattern
set smartcase                   " Case insensitive searches become sensitive with capitals
set shiftround                  " Round indent to multiple of 'shiftwidth'
set laststatus=2                " always show status line
set showcmd                     " Show (partial) command in the last line of the screen
set shortmess=aOstT             " shortens messages to avoid 'press a key' prompt
set linebreak                   " If on, Vim will wrap long lines at a character in 'breakat' rather than at the last character that fits on the screen
set whichwrap+=<,>,h,l,[,]      " move to the previous/next line after reaching first/last character in the line
" Number of lines to keep above or below the cursor.
if !&scrolloff
  set scrolloff=3
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline
set autoread                    " read file from disk when changed in another editor
set autowrite                   " auto write file on several commands
" Keep search pattern at the center of the screen.
" {{
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz
" }}
set smarttab                    " sw at the start of the line, sts everywhere else
if v:version >= 700
  set viminfo=!,'20,<50,s10,h
endif
set virtualedit=block
set wildmode=longest:full,full
set wildignore+=*~                                    " temporary files
set wildignore+=/tmp/*,*/tmp/*                        " tmp files
set wildignore+=*.zip,*.tar,*.tar.gz,*.gz,*.rar,*.7z  " archives
set wildignore+=*.md5.*                               " spring md5 files
set wildignore+=.hg,.git,.svn                         " Version control
set wildignore+=*.aux,*.out,*.toc                     " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg        " binary images
set wildignore+=*.o,*.so,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                                 " compiled spelling word lists
set wildignore+=*.sw?                                 " Vim swap files
set wildignore+=*.DS_Store                            " OSX bullshit
set wildignore+=*.orig                                " Merge resolution files

set wildoptions=pum   " use popup menu
set pumblend=0        " disable pseuod transparency for popup menu

set winaltkeys=no

set splitbelow                  " Split windows at bottom with :split
set splitright                  " Split windows on right with :vsplit

set ts=2 sts=2 sw=2 expandtab   " default indentation 2 spaces
" set relativenumber                " show lines number
set number                        " show lines number
" set nuw=6                       " column with line numbers is 6 chars width
set ff=unix                       " unix end of line
if !has('nvim')
  set cryptmethod=blowfish2         " encryption method :X or -x in command line
endif

augroup vimrc
  autocmd!
augroup END

autocmd VimResized * wincmd =                    " Resize splits when the window is resized

" ---------------
" folding
" --------------- {{
set foldenable                                   " Turn on folding
set foldmethod=syntax                            " Fold on the marker
set foldlevel=100                                " Don't autofold anything (but I can still fold manually)
set foldlevelstart=99                            " Remove folds
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open fold

" ---------------
" mouse
" --------------- {{
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
" }}

" ---------------
" mouse
" --------------- {{
set mouse=a                     " enable mouse
set mousehide                   " Hide mouse after chars typed
set mousemodel=popup            " the right mouse button causes a small pop-up menu to appear


" ---------------
" move lines
" --------------- {{

" without that moving lines in console vim not working
if !has('gui_running')
  if !has('nvim')
    let c='a'
    while c <= 'z'
      exec "set <A-".c.">=\e".c
      exec "imap \e".c." <A-".c.">"
      let c = nr2char(1+char2nr(c))
    endw
  endif
endif

" These two options together determine the behavior when part of a
" mapped key sequence or keyboard code has been received
set timeout
set timeoutlen=200
set ttimeout
set ttimeoutlen=200
set matchtime=0

" cursor shape
if !has('nvim')
  if exists('$ITERM_PROFILE')
    if exists('$TMUX')
      let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
      let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
      let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
      let &t_SI = "\<Esc>]50;CursorShape=1\x7"
      let &t_SR = "\<Esc>]50;CursorShape=2\x7"
      let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
  endif
else
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
endif

" moving lines
nmap <A-j> ]e==
nmap <A-k> [e==
imap <A-j> <Esc>]e==i
imap <A-k> <Esc>[e==i
vmap <A-j> ]egv=gv
vmap <A-k> [egv=gv

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    " moving lines
    nmap ∆ ]e==
    nmap Ż [e==
    imap ∆ <Esc>]e==i
    imap Ż <Esc>[e==i
    vmap ∆ ]egv=gv
    vmap Ż [egv=gv
  endif
endif
" }}

set tags=./tags,tags,./.git/tags; " use ctags

" ----------------------------------------
" Functions
" ----------------------------------------

" find all todoso
command -nargs=? -complete=file Todo execute "Ags" 'TODO\|FIXME\|XXX' <f-args>

" ---------------
" Quick spelling fix (first item in z= list)
" --------------- {{
function! QuickSpellingFix()
  if &spell
    normal 1z=
  else
    " Enable spelling mode and do the correction
    set spell
    normal 1z=
    set nospell
  endif
endfunction

command! QuickSpellingFix call QuickSpellingFix()
nmap <silent> <leader>z :QuickSpellingFix<CR>
" }}

" ---------------
" shifting tabs
" --------------- {{
function! ShiftTab(direction)
     let tab_number = tabpagenr()
     if a:direction == 0
         if tab_number == 1
             exe 'tabm' . tabpagenr('$')
         else
             exe 'tabm' . (tab_number - 2)
         endif
     else
         if tab_number == tabpagenr('$')
             exe 'tabm ' . 0
         else
             exe 'tabm ' . tab_number
         endif
     endif
     return ''
endfunction

inoremap <silent> <C-S-PageUp>  <C-r>=ShiftTab(0)<CR>
inoremap <silent> <C-S-PageDown>  <C-r>=ShiftTab(1)<CR>

noremap <silent> <C-S-PageUp>  :call ShiftTab(0)<CR>
noremap <silent> <C-S-PageDown> :call ShiftTab(1)<CR>
" }}
