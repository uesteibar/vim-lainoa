" Only load this indent file when no other was loaded.
if exists('b:did_indent')
  finish
endif
let b:did_indent = 1

setlocal indentexpr=LainoaIdent()
setlocal autoindent nolisp nosmartindent
setlocal indentkeys+=0],0)

" Only define the function once.
if exists('*LainoaIdent')
  finish
endif

function! LainoaIdent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  if previous =~ "{" && previous !~ "}" && line !~ "}"
    return indent(previousNum) + &tabstop
  else
    return indent(previousNum)
  endif
endfunction
