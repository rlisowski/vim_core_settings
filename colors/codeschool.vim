" Vim color file
" Converted from my Textmate Code School theme using Coloration
" http://astonj.com

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "codeschool"

" General colors
hi Normal ctermfg=231 ctermbg=0 cterm=NONE guifg=#f0f0f0 guibg=#252c31 gui=NONE
hi EndOfBuffer ctermfg=0 ctermbg=0 cterm=NONE guifg=#252c31 guibg=#252c31 gui=NONE
hi NonText ctermfg=59 ctermbg=0 cterm=NONE guifg=#414e58 guibg=NONE gui=NONE

hi SignColumn ctermfg=231 ctermbg=0 cterm=NONE guifg=#f0f0f0 guibg=#252c31 gui=NONE

hi Cursor ctermfg=16 ctermbg=145 cterm=NONE guifg=#182227 guibg=#666B6E gui=NONE
hi LineNr ctermfg=102 ctermbg=235 cterm=NONE guifg=#84898c guibg=#252c31 gui=NONE
hi CursorLineNr ctermfg=102 ctermbg=235 cterm=NONE guifg=#8db600 guibg=#2a343a gui=NONE

hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#252c31 guibg=#252c31 gui=NONE
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#f0f0f0 guibg=#575e61 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#f0f0f0 guibg=#575e61 gui=NONE

hi Folded ctermfg=247 ctermbg=16 cterm=NONE guifg=#9a9a9a guibg=#182227 gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f0f0f0 guibg=NONE gui=bold
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3f4b52 gui=NONE

hi TabLine ctermfg=231 ctermbg=242 cterm=NONE guifg=#aea7ab guibg=#2e373b gui=NONE
hi TabLineSel ctermfg=235 ctermbg=235 cterm=bold guifg=#f0f0f0 guibg=NONE gui=bold
hi TabLineFill ctermfg=235 ctermbg=235 cterm=NONE guifg=#2e373b guibg=NONE gui=bold

hi SpecialKey ctermfg=59 ctermbg=0 cterm=NONE guifg=#414e58 guibg=#252c31 gui=NONE

hi WildMenu guifg=green guibg=yellow gui=NONE ctermfg=black ctermbg=yellow cterm=NONE
"hi Ignore guifg=gray guibg=black gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

hi Error guifg=NONE guibg=NONE gui=undercurl ctermfg=white ctermbg=red cterm=NONE guisp=#FF6C60 " undercurl color
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi LongLineWarning guifg=NONE guibg=#371F1C gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellBad guifg=NONE guibg=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline guisp=#FF6C60 " undercurl color
hi SpellCap guifg=NONE guibg=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline guisp=#FF6C60 " undercurl color
hi SpellLocal guifg=NONE guibg=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline guisp=#FF6C60 " undercurl color
hi SpellRare guifg=NONE guibg=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline guisp=#FF6C60 " undercurl color

hi DiagnosticInfo ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#7c7b7b guibg=NONE gui=italic
hi DiagnosticError ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ff6c60 guibg=NONE gui=italic
hi DiagnosticHint ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#7c7b7b guibg=NONE gui=italic
hi DiagnosticWarn ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#7c7b7b guibg=NONE gui=italic

hi DiagnosticSignError ctermfg=1 guifg=#ff6c60
hi DiagnosticSignWarn ctermfg=3 guifg=Orange
hi DiagnosticSignInfo ctermfg=4 guifg=LightBlue
hi DiagnosticSignHint ctermfg=7 guifg=LightGrey

" Message displayed in lower left, such as --INSERT--
" hi ModeMsg guifg=black guibg=#C6C5FE gui=BOLD ctermfg=black ctermbg=cyan cterm=BOLD

hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
hi MatchParen ctermfg=180 ctermbg=NONE cterm=underline guifg=#dda790 guibg=NONE gui=underline
hi Pmenu ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=#2e373b gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3f4b52 gui=NONE
hi PmenuSbar guifg=black guibg=white gui=NONE ctermfg=black ctermbg=white cterm=NONE
hi Search ctermfg=NONE ctermbg=233 cterm=NONE guifg=NONE guibg=#3c474d gui=NONE
hi lCursor ctermfg=NONE ctermbg=233 cterm=NONE guifg=NONE guibg=#3c474d gui=NONE
" hi ColorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
" let &colorcolumn="".join(range(120,999),",")
hi IncSearch ctermfg=16 ctermbg=107 cterm=NONE guifg=#182227 guibg=#8bb664 gui=NONE
hi Directory ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi NormalFloat ctermfg=231 ctermbg=0 cterm=NONE guifg=#f0f0f0 guibg=#2e373b gui=NONE

hi Function ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi Identifier ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi Operator ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f0f0f0 guibg=NONE gui=NONE
hi Statement ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Type ctermfg=153 ctermbg=NONE cterm=NONE guifg=#b5d8f6 guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline

" Syntax highlighting
hi Comment ctermfg=247 ctermbg=NONE cterm=NONE guifg=#9a9a9a guibg=NONE gui=italic
hi String ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi Number ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE

hi Keyword ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi PreProc ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Conditional ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE

hi Todo ctermfg=247 ctermbg=NONE cterm=bold guifg=#9a9a9a guibg=NONE gui=bold,italic
hi Constant ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE

hi Character ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Boolean ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Float ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi link Repeat Statement
hi Label ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi link Exception Statement
hi link Include PreProc
hi Define ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi link Macro PreProc
hi link PreCondit PreProc
hi StorageClass ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi link Structure Type
hi link Typedef Type
hi Tag ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi link SpecialChar Special
hi link SpecialComment Special
hi link Debug Special

" Special for Ruby
hi rubyRegexp ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyEscape ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyControl ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi rubyClass ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyOperator ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyConstant ctermfg=146 ctermbg=NONE cterm=NONE guifg=#bfabcb guibg=NONE gui=NONE
hi rubyFunction ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi rubySymbol ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyInclude ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyException ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=146 ctermbg=NONE cterm=NONE guifg=#bfabcb guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=247 ctermbg=NONE cterm=NONE guifg=#9a9a9a guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi link rubyModule Keyword
hi link rubyKeyword Keyword
hi link rubyIdentifier Identifier

" Special for XML
hi link xmlTag Keyword
hi link xmlTagName Conditional
hi link xmlEndTag Identifier

" Special for HTML
hi htmlTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlTagName ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlEndTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlArg ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE

" Special for Javascript
hi link javaScriptNumber Number
hi javaScriptFunction ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

" Special for diff
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#82ff16 guibg=NONE gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#ff3537 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#91beff guibg=NONE gui=NONE
hi DiffText ctermfg=231 ctermbg=0 cterm=bold guifg=#bccce2 guibg=NONE gui=bold

" Special for yaml
hi yamlKey ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi yamlAnchor ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi yamlAlias ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE

" Special for css
hi cssURL ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi cssFunctionName ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi cssColor ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi cssClassName ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi cssValueLength ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=151 ctermbg=NONE cterm=NONE guifg=#a7cfa3 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

" Special for Ctrl-Space
hi CtrlSpaceSelected ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
hi CtrlSpaceNormal ctermfg=231 ctermbg=0 cterm=NONE guifg=#f0f0f0 guibg=#252c31 gui=NONE
hi CtrlSpaceFound ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE

" Special for Neomake
hi NeomakeErrorSign ctermfg=red ctermbg=NONE cterm=NONE guifg=red guibg=NONE gui=NONE
hi NeomakeWarningSign ctermfg=yellow guifg=yellow ctermbg=NONE cterm=NONE guibg=NONE gui=NONE
hi NeomakeInfoSign ctermfg=59 guifg=#414e58 ctermbg=NONE cterm=NONE guibg=NONE gui=NONE
hi NeomakeMessageSign ctermfg=59 guifg=#414e58 ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

hi NeomakeError ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=undercurl guisp=red
hi NeomakeWarning ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=undercurl guisp=yellow
hi NeomakeInfo ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=undercurl guisp=#414e58
hi NeomakeMessage ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=undercurl guisp=#414e58

hi NeomakeVirtualtextInfo ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#7c7b7b guibg=NONE gui=italic
hi NeomakeVirtualtextError ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#7c7b7b guibg=NONE gui=italic
hi NeomakeVirtualtextWarning ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#7c7b7b guibg=NONE gui=italic

" Special for EasyMotion
hi EasyMotionTarget ctermfg=yellow guifg=yellow ctermbg=NONE cterm=NONE guibg=NONE gui=NONE
hi link EasyMotionShade  Comment

hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen

hi link EasyMotionMoveHL Search
hi link EasyMotionIncSearch Search

" special for neoterm
hi FloatermNF guibg=#252c31
hi link FloatermBorderNF  Comment

" special for Telescope
hi TelescopeSelection      ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=bold " selected item
hi TelescopeSelectionCaret guifg=#CC241D " selection caret
hi TelescopeMultiSelection guifg=#928374 " multisections
hi TelescopeNormal         ctermfg=231 ctermbg=0 cterm=NONE guifg=#f0f0f0 guibg=#252c31 gui=NONE  " floating windows created by telescope.

" Border highlight groups.
hi TelescopeBorder         guifg=#ffffff
hi TelescopePromptBorder   guifg=#ffffff
hi TelescopeResultsBorder  guifg=#ffffff
hi TelescopePreviewBorder  guifg=#ffffff

" Used for highlighting characters that you match.
hi TelescopeMatching       guifg=#8bb664
" Used for the prompt prefix
" hi TelescopePromptPrefix   guifg=red
" ---
