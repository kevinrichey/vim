
"============================================================
" Source navigation

" Go to Parameters
nnoremap <C-K>gp  [[?(<CR>

"============================================================
" Refactoring

" Un/commment lines
nnoremap <Leader>/   0i//<ESC>j
nnoremap <Leader>\   :s/\/\///<CR>j

" Move current line up/down
nnoremap <Leader>k  ddkP
nnoremap <Leader>j  ddp

" Rename local variable
nnoremap <Leader>rv Vi{:s/\<<C-R>"\>/<C-R>./gc

" Add Parameter
nnoremap <Leader>ap  yiw[[kf)i,<ESC>pb

" Rename Parameter
nnoremap <Leader>rp /{<ESC>V%:s/\<<C-R>"\>/<C-R>./gc

" Extract Variable
nnoremap <Leader>xv O<C-R>. = <C-R>";<ESC>I

" Extract Method
"nnoremap <C-K>xm :call kwrExtractMethod()<CR>
nnoremap <C-K>xm  o<C-R>.<CR>{<CR>}<ESC>P

function! KwrExtractMethod() range
	let name = input("Function Name: ")

	" Replace selected code with method call.
  exec "normal C" . name . "();"

	"exec "'<,'>C" . name . "();"
	"normal d'>
	"exec "normal O" . name . "();\<Esc>"

	" Render method declaration
  "normal [[k
	"exec "normal O" . name . "()\<CR>{\<CR>}\<ESC>P"

	"normal ''
	"exec "normal Oprivate void ".funcName." ()\<CR>{\<Esc>"
	"normal gp
	"normal O}
	
	" Move cursor up to method declaration
	"normal %k
endfunction

function! KwrCountI()
  let g:i = g:i + 1
  return g:i
endfunction


"===================================================
" Wiki-notes

" Extract text to new wiki-notes page
nnoremap <C-K>xw :new <C-R>..md<CR>O<!-- *<C-R>.* --><CR><ESC>""p<ESC>Go<!-- vim:set ft=markdown: --><ESC>gg

