" ========== General Config ===================================================

let mapleader=","

filetype plugin indent on
syntax on
colo wintermute
set background=dark

set nocompatible
set nowrap
set backspace  =indent,eol,start " backspace should work as expected
set hlsearch                     " highlight search terms
set tabstop    =2                " show existing tabe with 4 spaces width
set shiftwidth =2                " '>' indenting uses 4 spaces
set expandtab                    " tab inserts 4 spaces
set textwidth  =0                " turn of auto insert new line
set wrapmargin =0
set path       =.,**

" highlight the 81st column
hi ColorColumn ctermbg=234
set colorcolumn=81

" always show line numbers, but only in current window.
set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber

" automatically resize vertical splits.
:au WinEnter * :set winfixheight
:au WinEnter * :wincmd =

" status line
set laststatus =2              " always show status line
set noruler                    " remove ruler
set statusline =
set statusline +=%1*\ %n\ %*   " buffer number
set statusline +=%3*%y%*       " file type
set statusline +=%4*\ %<%f%*   " full path
set statusline +=%2*%m%*       " modified flag
set statusline +=%1*%=%5l%*    " current line
set statusline +=%2*/%L%*      " total lines
set statusline +=%1*%4v\ %*    " virtual column number
hi User1 ctermbg=246 ctermfg=233
hi User2 ctermbg=246 ctermfg=233
hi User3 ctermbg=246 ctermfg=233
hi User4 ctermbg=246 ctermfg=233

" wild
set wildmenu
set wildmode=list:full
set wildignorecase
set wildignore=*.swp,*.bak
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags
set wildignore+=*.tar.*

" centralize swap, backup and undo files
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" ========== Keybindings ======================================================

nnoremap ;             :
nnoremap <ENTER>       gf
nnoremap <BS>          <C-O>
nnoremap <silent><C-l> :nohl<CR><C-l>
nnoremap gb            :ls<CR>:b<Space> 
inoremap jf            <esc>

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" finding files
nnoremap <leader>p :find <C-R>=expand('%:h').'/*'<CR>

" ========== Functions =======================================================

function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre *.js,*.rb :call <SID>StripTrailingWhitespaces()


" ========== Plugins ==========================================================

" plugin management
execute pathogen#infect()

" markdown
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" autocmd FileType markdown setlocal syntax=off " disable syntax
" autocmd FileType markdown match none
let g:instant_markdown_autostart = 0          " disable autostart
nnoremap <leader>md :InstantMarkdownPreview<CR>

" vim-markdown
let g:vim_markdown_folding_disabled = 1
set conceallevel=2

" easy align 
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
