autocmd BufRead,BufNewFile .rcrc*,rcrc, set filetype=rcshell

function! s:is_rcsh()
  if getline(1) =~# '\(/\|\s\)rc$'
      set filetype=rcshell
  endif
endfunction

autocmd BufRead,BufNewFile * call s:is_rcsh()
