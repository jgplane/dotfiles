" =============================================================================
" WORKSPACE AGNOSTIC
" -----------------------------------------------------------------------------
" To ease the pain of using this config on multiple computers: 
" - add core config choices to files below
" - only change those files on master branch
" - update workspace branches using:
"   $ git checkout --patch master <file_name> 
" =============================================================================

source ~/.vim/config/functions.vim
source ~/.vim/config/settings.vim
source ~/.vim/config/mappings.vim

" =============================================================================
" WORKSPACE SPECIFIC 
" =============================================================================

nnoremap <silent> <leader>d :-1r!date +\%s<CR>J0
set display+=lastline

colo wintermute
syntax off
set bg=light

inoremap <c-h> “
inoremap <c-j> ‘
inoremap <c-k> ’
inoremap <c-l> ”

set nocompatible
filetype plugin on

augroup textobj_quote
  autocmd!
  autocmd FileType leaf call textobj#quote#init({'educate': 1})
  autocmd FileType nab call textobj#quote#init({'educate': 1})
augroup END

