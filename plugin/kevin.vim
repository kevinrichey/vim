
"============================================================
" Refactoring & Navigation tools
"============================================================

" Go to Parameters
nnoremap <Leader>gp  [[?(<CR>

" Un/commment lines
nnoremap <Leader>/   0i//<ESC>j
nnoremap <Leader>\   :s/\/\///<CR>j

" Move current line up/down
nnoremap <Leader>k  ddkP
nnoremap <Leader>j  ddp

" Rename local variable
nnoremap <Leader>rv Vi{:s/\<<C-R>"\>/<C-R>./g

" Add Parameter
nnoremap <Leader>ap  yiw[[kf)i,<ESC>pb

" Rename Parameter
nnoremap <Leader>rp /{<ESC>V%:s/\<<C-R>"\>/<C-R>./g

" Extract Variable
nnoremap <Leader>xv O<C-R>. = <C-R>";<ESC>I

" Extract Function
nnoremap <Leader>xf  [[kO<C-R>.<CR>{<CR>}<ESC>P


function! KwrCountI()
  let g:i = g:i + 1
  return g:i
endfunction


"===================================================
" Wiki-notes

" Extract text to new wiki-notes page
nnoremap <C-K>xw :new <C-R>..md<CR>O<!-- *<C-R>.* --><CR><ESC>""p<ESC>Go<!-- vim:set ft=markdown: --><ESC>gg

