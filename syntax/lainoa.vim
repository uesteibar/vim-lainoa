syntax keyword lainoaTodos TODO XXX FIXME NOTE

syntax keyword lainoaKeywords
      \ if
      \ let
      \ else
      \ return
      \ fun

syntax keyword lainoaOperator
      \ +
      \ -
      \ *
      \ /
      \ ==
      \ !=
      \ <
      \ >
      \ =


syntax keyword lainoaBoolean
      \ true
      \ false

syntax match lainoaNumber "\v<\d+>"
syntax region lainoaString start=/"/ skip=/\\"/ end=/"/ oneline
syn region lainoaComment start="#" end="\n"

highlight default link lainoaTodos Todo
highlight default link lainoaComment Comment

highlight default link lainoaString String
highlight default link lainoaNumber Number
highlight default link lainoaBoolean Boolean

highlight default link lainoaOperator Operator
highlight default link lainoaKeywords Keyword
