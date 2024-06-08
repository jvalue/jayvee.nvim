" Vim syntax file
" Language:	Jayvee
" Maintainer:	Jonas Zeltner <jonas.zeltner@posteo.de>
" Filenames:	*.jv

if exists("b:current_syntax")
  finish
endif

syn keyword jayveeKeyword and as asBoolean asDecimal asInteger asText block blocktype builtin ceil cell column composite constraint constraints constrainttype false floor from in input iotype length lowercase matches not oftype on or output pipeline pow property publish range replace requires root round row sqrt to transform true uppercase use value valuetype with xor


syn match jayveeLineComment /\/\/.*/
syn region jayveeBlockComment start=/\/\*/ end=/\*\//
hi def link jayveeBlockComment jayveeLineComment

syn region jayveeStringDouble start=/"/ skip=/\\"\|'/ end=/"/
syn region jayveeStringSingle start=/'/ skip=/\\'\|"/ end=/'/
hi def link jayveeStringSingle jayveeStringDouble

hi def link jayveeKeyword Keyword
hi def link jayveeLineComment Comment
hi def link jayveeStringDouble String
