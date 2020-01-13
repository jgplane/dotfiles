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
au BufWritePre *.topo,*.nab,*.snap,*.yml,*.js,*.rb,*.json,*.vim :call <SID>StripTrailingWhitespaces()

fu! GitBranch()
  retu system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endf

fu! StatuslineGit()
  let l:branchname = GitBranch()
  retu strlen(l:branchname) > 0?'  ⎇  '.l:branchname.' ':''
endf

