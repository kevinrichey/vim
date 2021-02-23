
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="kevin"
set background=dark

hi Normal        ctermfg=white  ctermbg=black term=NONE guifg=white   guibg=Black
hi Folded        ctermfg=gray   ctermbg=black term=NONE guifg=gray    guibg=Black 
hi LineNr        ctermfg=gray                           guifg=gray
hi CursorLineNr  ctermfg=yellow                         guifg=yellow
hi Statement     ctermfg=LightMagenta                   guifg=LightMagenta gui=bold
hi Comment       ctermfg=LightBlue                      guifg=LightBlue 
hi Identifier    ctermfg=white                          guifg=white    
hi PreProc       ctermfg=LightRed                       guifg=LightRed  gui=bold
hi Type          ctermfg=LightGreen                     guifg=LightGreen
hi Special       ctermfg=white   guifg=white
hi Underlined    ctermfg=white   guifg=white    gui=underline
hi Constant      ctermfg=yellow  guifg=Orange
hi MatchParen	 ctermfg=white   guifg=white    gui=reverse
hi Visual        term=reverse gui=reverse

