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
source ~/.vim/config/vimwiki.vim

" =============================================================================
" WORKSPACE SPECIFIC 
" =============================================================================

" VIMWIKI
" whitelist the wikis used on this workspace--for example:
"   let g:vimwiki_list = []
let g:vimwiki_list = [code_wiki]

filetype plugin indent on
