" Vim syntax file
" Language: TOPO
" Maintainer: Jack Plane

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "topo"

syn match TopoTitle   '\V\^-\s\s\S'
syn match TopoHeader  '\V\^=\s\s\S'
syn match TopoList    '\V\^+\s\s\S'
syn match TopoNorm    '\V\^.\s\s\S'
syn match TopoQuote   '\V\^|\s\s\S'
syn match TopoComment '\V\^/\s\s\S'
" FIXME: this needs to check for '_\n'
" syn match TopoLine    '\V\^_\s\s\S'
syn match TopoCode    '\V\^#\s\s\S'

