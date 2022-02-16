
"============================================================
" Refactoring & Navigation tools
"============================================================

function! KwrCountI()
  let g:i = g:i + 1
  return g:i
endfunction


"===================================================
" Wiki-notes

" Extract text to new wiki-notes page
nnoremap <C-K>xw :new <C-R>..md<CR>O<!-- *<C-R>.* --><CR><ESC>""p<ESC>Go<!-- vim:set ft=markdown: --><ESC>gg

