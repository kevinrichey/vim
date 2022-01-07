
" Formatting, Indentation

set nolinebreak nowrap
set cindent noexpandtab 
set foldenable foldmethod=syntax  

" - Line continuations:        2 spaces (half shiftwidth, cino=+.5s)
" - Function return type:      0 spaces from margin (cino=t0)
" - Unclosed parens:           align with first character ( cino=(0 )
"set cino=+.5s,t0,(0

" Try to limit 80 columns.
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/


