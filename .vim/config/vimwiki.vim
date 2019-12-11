set runtimepath^=~/.vim/bundle/vimwiki
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let code_wiki = {}
let code_wiki.path = '~/code_wiki/'
let code_wiki.syntax = 'markdown'
let code_wiki.ext = '.md'
let code_wiki.index = 'README'

let simple_write_wiki = {}
let simple_write_wiki.path = '~/.simple_write'
let simple_write_wiki.syntax = "markdown"
let simple_write_wiki.ext = '.md'
let simple_write_wiki.index = 'README'
let simple_write_wiki.diary_rel_path = '/journal'
let simple_write_wiki.diary_index = 'journal'
let simple_write_wiki.diary_header = 'Journal'

let captains_log_wiki = {}
let captains_log_wiki.path = '~/.captains_log'
let captains_log_wiki.syntax = "markdown"
let captains_log_wiki.ext = '.md'
let captains_log_wiki.index = 'README'
let captains_log_wiki.diary_rel_path = 'journal'
let captains_log_wiki.diary_index = 'journal'
let captains_log_wiki.diary_header = 'Journal'

let life_log_wiki = {}
let life_log_wiki.path = '~/.life_log'
let life_log_wiki.syntax = "markdown"
let life_log_wiki.ext = '.md'
let life_log_wiki.index = 'README'
let life_log_wiki.diary_rel_path = 'journal'
let life_log_wiki.diary_index = 'journal'
let life_log_wiki.diary_header = 'Journal'

let g:vimwiki_ext2syntax = {'.md': 'markdown'}
let g:vimwiki_hl_cb_checked = 2
