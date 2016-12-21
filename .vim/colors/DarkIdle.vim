" Vim color file - DarkIdle
" Author: https://github.com/ekohilas
" 21/12/2016
" Inspired by the python idle color scheme
" With help of http://bytefluent.com/vivify
" Any highlights with green foreground and pink background should be reported.
" Tested with:
" `so $VIMRUNTIME/syntax/hitest.vim` `help highlight-groups` `help group-name`
" TODO: Fix GUI colors

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "DarkIdle"

hi Identifier          ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE      guisp=NONE
hi Normal              ctermfg=255  ctermbg=233  cterm=NONE         guifg=#eeeeee guibg=#121212 gui=NONE      guisp=#121212
hi VisualNOS           ctermfg=NONE ctermbg=NONE cterm=inverse      guifg=NONE    guibg=NONE    gui=NONE      guisp=NONE
hi ModeMsg             ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE      guisp=NONE
hi Cursor              ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE      guisp=NONE
"hi clear -- no settings --
hi IncSearch           ctermfg=227  ctermbg=NONE cterm=underline    guifg=#ffff5f guibg=NONE    gui=underline guisp=NONE
hi WildMenu            ctermfg=255  ctermbg=236  cterm=NONE         guifg=#eeeeee guibg=#303030 gui=NONE      guisp=#303030
hi SignColumn          ctermfg=NONE ctermbg=234  cterm=NONE         guifg=NONE    guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi SpecialComment      ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi Typedef             ctermfg=213  ctermbg=NONE cterm=NONE         guifg=#FF80FF guibg=NONE    gui=NONE      guisp=NONE
hi Title               ctermfg=NONE ctermbg=NONE cterm=underline    guifg=NONE    guibg=NONE    gui=underline guisp=NONE
hi Folded              ctermfg=240  ctermbg=NONE cterm=NONE         guifg=#585858 guibg=NONE    gui=NONE      guisp=NONE
hi PreCondit           ctermfg=227  ctermbg=NONE cterm=NONE         guifg=#ffff5f guibg=NONE    gui=NONE      guisp=NONE
hi Include             ctermfg=208  ctermbg=NONE cterm=NONE         guifg=#ff8700 guibg=NONE    gui=NONE      guisp=NONE
hi Float               ctermfg=227  ctermbg=NONE cterm=NONE         guifg=#ffff5f guibg=NONE    gui=NONE      guisp=NONE
hi StatusLineNC        ctermfg=240  ctermbg=232  cterm=NONE         guifg=#585858 guibg=#080808 gui=NONE      guisp=#080808
hi CTagsMember         ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi NonText             ctermfg=240  ctermbg=NONE cterm=NONE         guifg=#585858 guibg=NONE    gui=NONE      guisp=NONE
hi CTagsGlobalConstant ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi DiffText            ctermfg=255  ctermbg=94   cterm=NONE         guifg=#eeeeee guibg=#875f00 gui=NONE      guisp=#875f00
hi ErrorMsg            ctermfg=196  ctermbg=234  cterm=NONE         guifg=#ff0000 guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi Ignore              ctermfg=240  ctermbg=NONE cterm=NONE         guifg=#585858 guibg=NONE    gui=NONE      guisp=NONE
hi Debug               ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi PMenuSbar           ctermfg=NONE ctermbg=235  cterm=NONE         guifg=NONE    guibg=#262626 gui=NONE      guisp=#262626
hi SpecialChar         ctermfg=69   ctermbg=NONE cterm=NONE         guifg=#5f87ff guibg=NONE    gui=NONE      guisp=NONE
hi Conditional         ctermfg=208  ctermbg=NONE cterm=NONE         guifg=#ff8700 guibg=NONE    gui=NONE      guisp=NONE
hi StorageClass        ctermfg=213  ctermbg=NONE cterm=NONE         guifg=#FF80FF guibg=NONE    gui=NONE      guisp=NONE
hi Todo                ctermfg=233  ctermbg=226  cterm=NONE         guifg=#121212 guibg=#ffff00 gui=NONE      guisp=#ffff00
hi Special             ctermfg=69   ctermbg=NONE cterm=NONE         guifg=#5f87ff guibg=NONE    gui=NONE      guisp=NONE
hi LineNr              ctermfg=240  ctermbg=234  cterm=NONE         guifg=#585858 guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi StatusLine          ctermfg=240  ctermbg=234  cterm=NONE         guifg=#585858 guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi Label               ctermfg=208  ctermbg=NONE cterm=NONE         guifg=#ff8700 guibg=NONE    gui=NONE      guisp=NONE
hi CTagsImport         ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi PMenuSel            ctermfg=255  ctermbg=236  cterm=NONE         guifg=#eeeeee guibg=#303030 gui=NONE      guisp=#303030
hi Search              ctermfg=227  ctermbg=NONE cterm=underline    guifg=#ffff5f guibg=NONE    gui=underline guisp=NONE
hi CTagsGlobalVariable ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi Delimiter           ctermfg=246  ctermbg=NONE cterm=NONE         guifg=#949494 guibg=NONE    gui=NONE      guisp=NONE
hi Statement           ctermfg=208  ctermbg=NONE cterm=NONE         guifg=#ff8700 guibg=NONE    gui=NONE      guisp=NONE
hi SpellRare           ctermfg=NONE ctermbg=57   cterm=NONE         guifg=NONE    guibg=#5f00ff gui=NONE      guisp=#5f00ff
hi EnumerationValue    ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi Comment             ctermfg=160  ctermbg=NONE cterm=NONE         guifg=#d70000 guibg=NONE    gui=NONE      guisp=NONE
hi Character           ctermfg=34   ctermbg=NONE cterm=NONE         guifg=#00af00 guibg=NONE    gui=NONE      guisp=NONE
hi TabLineSel          ctermfg=255  ctermbg=236  cterm=NONE         guifg=#eeeeee guibg=#303030 gui=NONE      guisp=#303030
hi Number              ctermfg=227  ctermbg=NONE cterm=NONE         guifg=#ffff5f guibg=NONE    gui=NONE      guisp=NONE
hi Boolean             ctermfg=227  ctermbg=NONE cterm=NONE         guifg=#ffff5f guibg=NONE    gui=NONE      guisp=NONE
hi Operator            ctermfg=208  ctermbg=NONE cterm=NONE         guifg=#ff8700 guibg=NONE    gui=NONE      guisp=NONE
hi CursorLine          ctermfg=NONE ctermbg=234  cterm=NONE         guifg=NONE    guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi Union               ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi TabLineFill         ctermfg=240  ctermbg=234  cterm=underline    guifg=#585858 guibg=#1c1c1c gui=underline guisp=#1c1c1c
hi Question            ctermfg=87   ctermbg=NONE cterm=NONE         guifg=#5fffff guibg=NONE    gui=NONE      guisp=NONE
hi WarningMsg          ctermfg=226  ctermbg=234  cterm=NONE         guifg=#ffff00 guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi DiffDelete          ctermfg=52   ctermbg=52   cterm=NONE         guifg=#5f0000 guibg=#5f0000 gui=NONE      guisp=#5f0000
hi CursorColumn        ctermfg=NONE ctermbg=234  cterm=NONE         guifg=NONE    guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi Define              ctermfg=33   ctermbg=NONE cterm=NONE         guifg=#0087ff guibg=NONE    gui=NONE      guisp=NONE
hi Function            ctermfg=33   ctermbg=NONE cterm=NONE         guifg=#0087ff guibg=NONE    gui=NONE      guisp=NONE
hi FoldColumn          ctermfg=240  ctermbg=234  cterm=NONE         guifg=#585858 guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi PreProc             ctermfg=227  ctermbg=NONE cterm=NONE         guifg=#ffff5f guibg=NONE    gui=NONE      guisp=NONE
hi EnumerationName     ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi Visual              ctermfg=NONE ctermbg=236  cterm=NONE         guifg=NONE    guibg=#303030 gui=NONE      guisp=#303030
hi MoreMsg             ctermfg=226  ctermbg=NONE cterm=NONE         guifg=#ffff00 guibg=NONE    gui=NONE      guisp=NONE
hi SpellCap            ctermfg=NONE ctermbg=22   cterm=NONE         guifg=NONE    guibg=#005f00 gui=NONE      guisp=#005f00
hi VertSplit           ctermfg=232  ctermbg=232  cterm=NONE         guifg=#080808 guibg=#080808 gui=NONE      guisp=#080808
hi Exception           ctermfg=208  ctermbg=NONE cterm=NONE         guifg=#ff8700 guibg=NONE    gui=NONE      guisp=NONE
hi Keyword             ctermfg=208  ctermbg=NONE cterm=NONE         guifg=#ff8700 guibg=NONE    gui=NONE      guisp=NONE
hi Type                ctermfg=213  ctermbg=NONE cterm=NONE         guifg=#ff87ff guibg=NONE    gui=NONE      guisp=NONE
hi DiffChange          ctermfg=255  ctermbg=58   cterm=NONE         guifg=#eeeeee guibg=#5f5f00 gui=NONE      guisp=#5f5f00
hi SpellLocal          ctermfg=NONE ctermbg=58   cterm=NONE         guifg=NONE    guibg=#5f5f00 gui=NONE      guisp=#5f5f00
hi Error               ctermfg=196  ctermbg=234  cterm=NONE         guifg=#ff0000 guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi PMenu               ctermfg=240  ctermbg=234  cterm=NONE         guifg=#585858 guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi SpecialKey          ctermfg=240  ctermbg=NONE cterm=NONE         guifg=#585858 guibg=NONE    gui=NONE      guisp=NONE
hi Constant            ctermfg=227  ctermbg=NONE cterm=NONE         guifg=#ffff5f guibg=NONE    gui=NONE      guisp=NONE
hi DefinedName         ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi Tag                 ctermfg=NONE ctermbg=NONE cterm=underline    guifg=NONE    guibg=NONE    gui=underline guisp=NONE
hi String              ctermfg=34   ctermbg=NONE cterm=NONE         guifg=#00af00 guibg=NONE    gui=NONE      guisp=NONE
hi PMenuThumb          ctermfg=NONE ctermbg=236  cterm=NONE         guifg=NONE    guibg=#303030 gui=NONE      guisp=#303030
hi MatchParen          ctermfg=NONE ctermbg=NONE cterm=underline    guifg=NONE    guibg=NONE    gui=underline guisp=NONE
hi LocalVariable       ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi Repeat              ctermfg=208  ctermbg=NONE cterm=NONE         guifg=#ff8700 guibg=NONE    gui=NONE      guisp=NONE
hi SpellBad            ctermfg=NONE ctermbg=52   cterm=NONE         guifg=NONE    guibg=#5f0000 gui=NONE      guisp=#5f0000
hi CTagsClass          ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi Directory           ctermfg=227  ctermbg=NONE cterm=NONE         guifg=#ffff5f guibg=NONE    gui=NONE      guisp=NONE
hi Structure           ctermfg=213  ctermbg=NONE cterm=NONE         guifg=#FF80FF guibg=NONE    gui=NONE      guisp=NONE
hi Macro               ctermfg=227  ctermbg=NONE cterm=NONE         guifg=#ffff5f guibg=NONE    gui=NONE      guisp=NONE
hi Underlined          ctermfg=NONE ctermbg=NONE cterm=underline    guifg=NONE    guibg=NONE    gui=underline guisp=NONE
hi DiffAdd             ctermfg=255  ctermbg=22   cterm=NONE         guifg=#eeeeee guibg=#005f00 gui=NONE      guisp=#005f00
hi TabLine             ctermfg=240  ctermbg=234  cterm=underline    guifg=#585858 guibg=#1c1c1c gui=underline guisp=#1c1c1c
hi PythonBuiltin       ctermfg=213  ctermbg=NONE cterm=NONE         guifg=#FF80FF guibg=NONE    gui=NONE      guisp=NONE
hi cursorim            ctermfg=235  ctermbg=60   cterm=NONE         guifg=#192224 guibg=#536991 gui=NONE      guisp=#536991
hi colorcolumn         ctermfg=NONE ctermbg=234  cterm=NONE         guifg=NONE    guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi cursorlinenr        ctermfg=255  ctermbg=234  cterm=NONE         guifg=#eeeeee guibg=#1c1c1c gui=NONE      guisp=#1c1c1c
hi JavaScriptStrings   ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi phpStringSingle     ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi phpStringDouble     ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi htmlString          ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
hi htmlTagName         ctermfg=46   ctermbg=201  cterm=NONE         guifg=#00ff00 guibg=#ff00ff gui=NONE      guisp=#ff00ff
