" Vim syntax file
" Language: NAB
" Maintainer: Jack Plane

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "nab"

syn region NabTitle   start=/^\+- /  end=/^\+[-#"@>] /me=s-1
syn region NabId      start=/^\+# /  end=/^\+[-#"@>] /me=s-1
syn region NabNote    start=/^\+> /  end=/^\+[-#"@>] /me=s-1
syn region NabSource  start=/^\+@ /  end=/^\+[-#"@>] /me=s-1

syn match NabEmphasis  '\V`\+\.\+`\+'

