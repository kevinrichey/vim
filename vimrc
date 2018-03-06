set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

filetype plugin on

" Config Variables

let s:tempdir = "temp/"
let s:indent = 2

" Locate my vim files folder
if isdirectory($HOME."/.vim")
  let g:myvimfiles = $HOME."/.vim/"
elseif isdirectory($HOME."/vimfiles")
  let g:myvimfiles = $HOME."/vimfiles/"
else
  let g:myvimfiles = "."
endif

" Setup the temp directory for backup and undo files
let s:temppath = g:myvimfiles.s:tempdir
if !isdirectory(s:temppath)
  mkdir(s:temppath)
endif

" === my default settings ===

" Indentation & tabs
set autoindent                " Auto indent
set expandtab                 " Spaces, not tabs
let &tabstop = s:indent       " Tab spacing
let &shiftwidth = s:indent    " Indent spacing, same as tabs

" Backup & Undo files
set autowriteall      " Automatically save when switching buffers
set writebackup 			" Backup current file
set nobackup					" Delete the backup file afterwards
let &backupdir = s:temppath
let &undodir   = s:temppath

" Searching
set ignorecase       " case-insensitive searching

" Display 
set lbr!             " No line break
set textwidth=0      " Don't auto-CR at and of a line.
set number           " Show line numbers
set statusline=%n\ %t\ %m\ %r%w%y%q\ %=\ [0x%B]\ @%o\ (%c,%l)\ %L

" GUI
set guioptions+=b    " Turn on horizontal scroll bar in GUI
set guifont=consolas:h12
highlight Folded guibg=Black guifg=DarkGray

"=== My key mappings ===

nmap gf :e <cfile><CR>
nmap <F1> :help <C-R><C-W><CR>

" Search directory for word under cursor
nmap <F3> :vimgrep /<C-R><C-W>/j ** <Bar> cw

" Execute current line as vim ex
nmap <F8> :exec getline(".")<CR>

" Execute current line on the shell
nmap <F9> :exec "silent ! start ".getline(".")<CR>


" Navigate buffers
nmap <C-PageUp> :bprevious<CR>
nmap <C-PageDown> :bnext<CR>
nmap <C-Del> :bdelete!<CR>

" Press spacebar to clear search highlghting
nnoremap <space> :noh<CR><space>

" Extract new wiki page from cut text
nmap <C-K>xw :new <C-R>..txt<CR>O<!-- *<C-R>.* --><CR><ESC>""p<ESC>Go<!-- vim:set ft=markdown: --><ESC>gg

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

" vim-plug package manager

call plug#begin('~/.vim/plugged')
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

colorscheme palenight

" Load Project-Specific local vim config

silent! source .vimlocal

