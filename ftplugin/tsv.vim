
set number
set noexpandtab
set shiftwidth=12
set softtabstop=12
set tabstop=12
set nowrap
set scrollopt=hor
set scrollbind
set writebackup 			   " Backup current file
set nobackup					" Delete the backup file afterwards

nnoremap <C-K>f :sp<CR>:0<CR>1<C-W>_

function! KwrSheetDelCell(lnum, colnum)
	let row = split(getline(a:lnum), "\t")
	call remove(row, a:colnum-1)
	call setline(a:lnum, join(row, "\t"))
	let lnum = a:lnum + 1
endfunction

function! KwrSheetDelColumn(colnum)
	let lnum = 1
	while lnum < line("$")
		call KwrSheetDelCell(lnum, a:colnum)
		let lnum = lnum + 1
	endwhile
endfunction

