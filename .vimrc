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

filetype plugin indent on
 
"  
" Used in tandem with:
" - calling git grep with vim term:
"   :vert term git grep -hiIn --break --heading
" - forcing git grep pager to not wrap lines:
"   in .gitconfig add:
"   [core]
"     pager = less -S
" - putting term under vim control:
"   CTRL-\
" 
" Follow line from grep path
fu! GoThere()
  let line=getline('.')
  let trimmed_line=trim(line)
  exe "find ".trimmed_line
endf
nnoremap <leader>gt :call GoThere()

" LINTING
" see: https://gist.github.com/romainl/ce55ce6fdc1659c5fbc0f4224fd6ad29
autocmd FileType ruby setlocal makeprg=rubocop\ --format\ emacs
autocmd BufWritePost *.rb silent make! <afile> | silent redraw!
autocmd QuickFixCmdPost [^l]* cwindow

