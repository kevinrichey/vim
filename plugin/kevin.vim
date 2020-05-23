
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
nnoremap <C-K>ap  yiw[[kf)i,<ESC>pb

" Rename Parameter
nnoremap <C-K>rp /{<ESC>V%:s/\<<C-R>"\>/<C-R>./gc

" Extract Variable
nnoremap <C-K>xv O<C-R>. = <C-R>";<ESC>^

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

