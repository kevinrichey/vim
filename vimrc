set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"Enable filetype plugins
filetype plugin on

"=== My key mappings ===

map gf :e <cfile><CR>
map <F1> :exec "help ".expand("<CWORD><CR>

" Search directory for word under cursor
map <F3> :vimgrep /<C-R><C-W>/j ** <Bar> cw

" Execute current line on the shell
map <F9> :exec "silent ! start ".getline(".")<CR>


" Navigate buffers
map <C-PageUp> :bprevious<CR>
map <C-PageDown> :bnext<CR>
map <C-Del> :bdelete!<CR>

" Press spacebar to clear search highlghting
nnoremap <space> :noh<CR><space>

"=== Custom Menu Commands ====

an Kevin.New\ Page :call Kwr_InsertMarkdownFile()<CR>
an Kevin.Tag :call Kwr_MakeWikiTag()<CR>
an Kevin.Link :call Kwr_MakeWikiLink()<CR>
an Kevin.HelpTags :helptags .<CR>
an Kevin.Extract\ Page :call KwrExtractMarkdownFile()<CR>
an Kevin.To\ HTML :!pandoc % -o %:r.html<CR>
an Kevin.To\ Word :!pandoc % -o %:r.docx<CR>
an Kevin.Exec\ Vim :exec getline(".")<CR>
an Kevin.Exec\ Shell :exec "silent ! start ".getline(".")<CR>
an Kevin._vimrc :split $MYVIMRC
an Kevin.Plugin :split $HOME/vimfiles/plugin/kevin.vim<CR>

" === my default settings ===

set autoindent					" Auto indent
set autowriteall				" Automatically save when switching buffers
set tabstop=2					" Tab spacing
set shiftwidth=2				" Indent spacing
set expandtab
set guioptions+=b
set number						" Show line numbers
set writebackup 			" Backup current file
set nobackup					" Delete the backup file afterwards
set backupdir=~/vimfiles/backups
set history=50					" keep 50 lines of command line history
set showcmd						" display incomplete commands
set lbr!		   " No line break
set incsearch					" do incremental searching
set ignorecase					" case-insensitive searching
set nohlsearch		   " No search highlighting
set textwidth=0      " Don't auto-CR at and of a line.
set statusline=%n\ %t\ %m\ %r%w%y%q\ %=\ [0x%B]\ @%o\ (%c,%l)\ %L

" -- GUI --
set guifont=consolas:h12
highlight Folded guibg=Black guifg=DarkGray

" vim-plug package manager

call plug#begin('~/.vim/plugged')
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

colorscheme palenight

" Load Project-Specific local vim config

silent! source .vimlocal

