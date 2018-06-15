" ========== General Config ===================================================

let mapleader=","

filetype plugin indent on
syntax on
set background=dark
colo wintermute

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
set cursorline

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
inoremap jj            <Esc>

nnoremap <silent> <leader>] :cnext<CR>
nnoremap <silent> <leader>[ :cprevious<CR>

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" tell me the syntax highlighting group at the cursor
map <leader>sy :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

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
execute pathogen#helptags()

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

" fugitive
nnoremap <Leader>gg :Ggrep<Space>
nnoremap <Leader>gb :Gblame<CR>

" vimwiki
let g:vimwiki_list = [{'path': '~/doc/code_wiki', 'syntax': 'markdown', 'ext': '.md'},
          \ {'path': '~/doc/.planette', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_hl_cb_checked = 2
let g:vimwiki_ext2syntax = {'.md': 'markdown'}

