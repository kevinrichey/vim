
set noexpandtab

noremap <C-]>  vi]<C-]>

map <F5> :!/c/Program\ Files\ \(x86\)/Pandoc/pandoc.exe -s --toc --toc-depth=2 -H pandoc.css % -o %:r.html<CR>

map <C-F5> :!/c/Program\ Files\ \(x86\)/Pandoc/pandoc.exe -s  % -o %:r.docx<CR>

