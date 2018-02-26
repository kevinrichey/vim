
"============================================================
" Source navigation

" Go to Parameters
nnoremap <C-K>gp  [[?(<CR>

"============================================================
" C++ Refactoring

" Un/commment lines
nnoremap <C-_>  I//<ESC>j
nnoremap <C-\>  :s/\/\///<CR>j

" Move current line up/down
nnoremap <C-Up>    ddkP
nnoremap <C-Down>  ddp

" Rename Local scope
nnoremap <C-K>rv Vi{:s/\<<C-R>"\>/<C-R>./gc

" Add Parameter
nnoremap <C-K>ap  [[?)<CR>i, 

" Rename Parameter
nnoremap <C-K>rp /{<ESC>V%:s/\<<C-R>"\>/<C-R>./gc

" Extract Variable
nnoremap <C-K>xv Oauto <C-R>. = <C-R>";<ESC>

" Extract Method
"nnoremap <C-K>xm :call kwrExtractMethod()<CR>
nnoremap <C-K>xm O<C-R>.<CR>{<ESC>""po}<ESC>%u

"===================================================
" Wiki-notes

" Extrace text to new wiki-notes page
nnoremap <C-K>xw :new <C-R>..txt<CR>O<!-- *<C-R>.* --><CR><ESC>""p<ESC>Go<!-- vim:set ft=markdown: --><ESC>gg

