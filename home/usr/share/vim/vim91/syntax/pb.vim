" Vim syntax file
" Language:	C-shell (csh)
" Maintainer:	This runtime file is looking for a new maintainer.
" Former Maintainer: Charles E. Campbell
" Last Change:	Aug 31, 2016
" Version:	14
" Former URL:	http://www.drchip.org/astronaut/vim/index.html#SYNTAX_CSH

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Variables which affect the csh itself
hi redid ctermbg=blue ctermfg=black
syn match redid	"03443718087"
"hi def link redid		redid


let b:current_syntax = "pb"

" vim: ts=18
