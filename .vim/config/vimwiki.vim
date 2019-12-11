set runtimepath^=~/.vim/bundle/vimwiki
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let code_wiki = {}
let code_wiki.path = '~/code_wiki/'
let code_wiki.syntax = 'markdown'
let code_wiki.ext = '.md'
let code_wiki.index = 'README'

let g:vimwiki_ext2syntax = {'.md': 'markdown'}
let g:vimwiki_hl_cb_checked = 2
