" Vim syntax file
" Language: LEAF
" Maintainer: Jack Plane

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "leaf"

syn match LeafH1           '.*\n\ze-$'
syn match LeafH2           '.*\n\ze--$'
syn match LeafH3           '.*\n\ze---$'
syn match LeafH4           '.*\n\ze----$'
syn match HeadingLine      '^-\+$'
syn match LeafQuote        '^|\s'
syn match LeafCode         '^||\s'
syn match LeafList         '^-\s'
syn match LeafComment      '^\/.\+$'
syn match LeafEmenderOpen  '{(\S\+'
syn match LeafEmenderClose ')}'
