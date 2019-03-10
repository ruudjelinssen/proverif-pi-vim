" Syntax definition Proverif Pi
if exists("b:current_syntax")
    finish
endif

" Matching
syntax keyword provKeyword 
    \ private
    \ free
    \ fun
    \ reduc
    \ let
    \ new
    \ query
    \ process

syntax keyword provBoolean
    \ true
    \ false

syntax keyword provFunction
    \ in
    \ out

syntax keyword provOperators
    \ "="
    \ "==>"
    \ "!"
    \ "<>"
    \ "||"
    \ "&&"
    \ "|"
    \ "==>"

syntax region provComment start="(\*" end="\*)"

" Set highlighting
highlight default link provComment Comment
highlight default link provKeyword Keyword
highlight default link provFunction Function
highlight default link provBoolean Boolean
highlight default link provOperators Operator

let b:current_syntax = "proverifpi"
