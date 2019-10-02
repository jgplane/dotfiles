let mapleader=","

syntax on
set background=dark

try
  colorscheme wintermute
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


" =============================================================================
" MAP
" =============================================================================

" LEADER
" normal
nnoremap <leader>b     80\|bi<CR><ESC>0
nnoremap <leader>e     :Vexplore<CR>
nnoremap <leader>f     :find<SPACE>
nnoremap <leader>gb    :vert term ++close git blame %<CR>
nnoremap <leader>gg    :vert term git grep -hiIn --break --heading<SPACE>
nnoremap <leader>n     :cnext<CR>
nnoremap <leader>p     :cprev<CR>
nnoremap <leader>say   :call SayHighlighting()<CR>
nnoremap <leader>t     :vimgrep //g ./**/*<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
" visual
xnoremap <leader>s     :sort<CR>

" generate vimrc headers
map == :call FillLine('A=')<CR>
map -- :call FillLine('A-')<CR>

" disable arrow keys
noremap <left>  <Nop>
noremap <right> <Nop>
noremap <down>  <Nop>
noremap <up>    <Nop>

" resizing split windows
nnoremap <left>  :5winc ><CR>
nnoremap <right> :5winc <<CR>
nnoremap <down>  :5winc +<CR>
nnoremap <up>    :5winc -<CR>

" go to file under cursor
nnoremap <ENTER> gf

" clear search syntax highlighting
nnoremap <silent><C-l> :nohl<CR><C-l>

" view files open in buffer
nnoremap gb :ls<CR>:b<Space>

nnoremap ;             :
inoremap jj            <Esc>
nnoremap <BS>          <C-O>


" =============================================================================
" FUNCTIONS
" =============================================================================

" tell me the syntax highlighting group at the cursor
fu! SayHighlighting()
  echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
endf

fu! FillLine(char)
  exe 'norm '.(79 - strlen(getline('.'))).a:char
endf

fu! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  cal cursor(l, c)
endf
au BufWritePre *.yml,*.js,*.rb,*.json,*.vim :call <SID>StripTrailingWhitespaces()

fu! GitBranch()
  retu system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endf

fu! StatuslineGit()
  let l:branchname = GitBranch()
  retu strlen(l:branchname) > 0?'  ⎇  '.l:branchname.' ':''
endf


" =============================================================================
" PLUGINS
" =============================================================================

filetype plugin indent on

" VIMWIKI
set runtimepath^=~/.vim/bundle/vimwiki
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let code_wiki = {}
let code_wiki.path = '~/code_wiki/'
let code_wiki.syntax = 'markdown'
let code_wiki.ext = '.md'
let code_wiki.index = 'README'

let g:vimwiki_list = [code_wiki]
let g:vimwiki_ext2syntax = {'.md': 'markdown'}
let g:vimwiki_hl_cb_checked = 2

