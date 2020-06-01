setlocal indentexpr=LainoaIdent()

function! LainoaIdent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  if previous =~ "{" && previous !~ "}" && line !~ "}"
    return indent(previousNum) + &tabstop
  endif
endfunction
