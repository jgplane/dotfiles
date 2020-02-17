let mapleader=","

syntax on
set background=dark

try
  colorscheme sprawl
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme elflord
endtry

set nocompatible
set nowrap
set backspace  =indent,eol,start " backspace should work as expected
set hlsearch                     " highlight search terms
set tabstop    =2                " show existing tabs with 2 spaces width
set shiftwidth =2                " '>' indenting uses 2 spaces
set expandtab                    " tab inserts 2 spaces
set textwidth  =0                " turn of auto insert new line
set wrapmargin =0
set path       =.,**
set cursorline

" show line numbers in current window
set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber

set laststatus =2                         " always show status line
set noruler                               " remove ruler
set statusline =
set statusline +=%1*%{StatuslineGit()}%*
set statusline +=%1*\ %<%f%*              " full path
set statusline +=%1*%m%*                  " modified flag
set statusline +=%1*%=%5l%*               " current line
set statusline +=%1*/%L%*                 " total lines
set statusline +=%1*\ ::
set statusline +=%1*%2v\ %*               " virtual column number

set wildmenu
set wildmode=list
set wildignorecase
set wildignore=*.swp,*.bak
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags
set wildignore+=*.tar.*
set wildignore+=*/node_modules/*
set wildignore+=*.cache
set wildignore+=*.log

" centralize swap, backup and undo files
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
