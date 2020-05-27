
"------------------------------------------------------------
" Local config variables

let s:indent = 4

" Locate my .vim folder in Windows or MSYS
if isdirectory($HOME."/.vim")
  let s:vimdir = $HOME."/.vim/"
elseif isdirectory($HOME."/vimfiles")
  let s:vimdir = $HOME."/vimfiles/"
else
  let g:vimdir = "."
endif


"------------------------------------------------------------
" Vim Options

syntax on
filetype plugin on

set nocompatible
set noerrorbells

" Formatting & indentation

let &tabstop     = s:indent 
let &softtabstop = s:indent 
let &shiftwidth  = s:indent 
set expandtab autoindent smartindent
set linebreak textwidth=0   " don't auto-wrap long lines

" Status Line
"   buff# filename [+] [RO][Preview][file-type][Quickfix]     [char hex] @offset (col,line) #lines
set statusline=%n\ %t\ %m\ %r%w%y%q\ %=\ [0x%B]\ @%o\ (%c,%l)\ %L
set laststatus=2  showcmd cmdheight=2
set number
set foldcolumn=0
set wildmenu

" Searching
set ignorecase smartcase incsearch
set path+=**

" Backup & Undo Stuff
set autowriteall nobackup noswapfile undofile
let &undodir = s:vimdir."/undodir"

" Netrw File Browsing Config
let g:netrw_browse_split = 4   " vert split open file
let g:netrw_banner       = 0
let g:netrw_liststyle    = 3
let s:ghregex='\(^\|\s\s\)\zs\.\S\+'
"let g:netrw_list_hide    = netrw_gitignore#Hide().s:ghregex
let g:netrw_list_hide    = s:ghregex

" Markdown Config
let g:markdown_folding = 1   " Enable Markdown folding


"------------------------------------------------------------
" My Custom Hotkeys

let mapleader = ' '

nnoremap gf :e <cfile><CR>
vnoremap <C-X>    "+d
nnoremap <C-V>    "*p
vnoremap <C-C>    "+y
inoremap <C-Space>   <C-X><C-I>

nnoremap <Leader>t    :let $VIM_DIR=expand('%:p:h')<CR>:below terminal ++rows=10<CR>cd $VIM_DIR<CR>
nnoremap <Leader>f    :Lexplore 20<CR>

" Windows & Buffers
nnoremap <Leader><PageDown>   :bnext<CR>
nnoremap <Leader><PageUp>     :bprevious<CR>
nnoremap <Leader><Del>        :bdelete!<CR>
nnoremap <Leader>+            :vertical resize +5<CR> 
nnoremap <Leader>-            :vertical resize -5<CR> 


" Load Project local vim config
silent! source .vimlocal

