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

function! RemoveCurlyQuotes()
  sil! %s/”/"/g
  sil! %s/“/"/g
  sil! %s/’/'/g
  sil! %s/‘/'/g
endfun
nnoremap <silent> <leader>' :call RemoveCurlyQuotes()<CR> 
nnoremap <silent> <leader>t :CtrlP<CR>

filetype plugin indent on

