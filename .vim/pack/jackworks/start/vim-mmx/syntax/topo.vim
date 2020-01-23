" Vim syntax file
" Language: TOPO
" Maintainer: Jack Plane

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "topo"

syn region TopoTitle   start=/^\+- /  end=/^\+[-=+.|/#] /me=s-1
syn region TopoHeader  start=/^\+= /  end=/^\+[-=+.|/#] /me=s-1
syn region TopoQuote   start=/^\+| /  end=/^\+[-=+.|/#] /me=s-1
syn region TopoComment start=/^\+\/ / end=/^\+[-=+.|/#] /me=s-1
syn region TopoCode    start=/^\+# /  end=/^\+[-=+.|/#] /me=s-1

syn match TopoEmender   '\V{\.\+}'
syn match TopoEmphasis  '\V`\+\.\+`\+'

