
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="kevin"
set background=dark

hi Normal        guifg=white   guibg=Black
hi Folded        guifg=gray    guibg=Black 
hi LineNr        guifg=gray    
hi CursorLineNr  guifg=yellow
hi Statement     guifg=LightMagenta gui=bold
hi Comment       guifg=LightBlue 
hi Identifier    guifg=white    
hi PreProc       guifg=LightRed  gui=bold
hi Type          guifg=LightGreen
hi Special       guifg=white
hi Underlined    guifg=white    gui=underline
hi Constant      guifg=Orange
hi MatchParen	 guifg=white    gui=reverse
hi Visual        gui=reverse

