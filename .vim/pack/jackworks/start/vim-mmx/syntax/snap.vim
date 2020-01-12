" Vim syntax file
" Language: Snap
" Maintainer: Jack Plane

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "snap"

syn match SnapTitleNorm '\V\^-\s.'
syn match SnapTitleBang '\V\^-\s!'
syn match SnapTextHead  '\V\^=\s\S'
syn match SnapTextStart '\V\^.\s.'
syn match SnapTextTrail '\V\^\s\s\s'
syn match SnapTextTodo  '\V\^\S\so'
syn match SnapTextDone  '\V\^\S\sx'

