" Vim syntax file
" Language:	Jayvee
" Maintainer:	Jonas Zeltner <jonas.zeltner@posteo.de>
" Filenames:	*.jv

if exists("b:current_syntax")
  finish
endif

syn keyword jayveeKeyword and block blocktype builtin ceil cell column composite constraint constraints constrainttype false floor from in input iotype length matches not oftype on or output pipeline pow property range replace requires root round row sqrt to transform true value valuetype with xor uses


syn match jayveeLineComment /\/\/.*/
syn region jayveeBlockComment start=/\/\*/ end=/\*\//
hi def link jayveeBlockComment jayveeLineComment

syn region jayveeStringDouble start=/"/ skip=/\\"\|'/ end=/"/
syn region jayveeStringSingle start=/'/ skip=/\\'\|"/ end=/'/
hi def link jayveeStringSingle jayveeStringDouble

hi def link jayveeKeyword Keyword
hi def link jayveeLineComment Comment
hi def link jayveeStringDouble String
