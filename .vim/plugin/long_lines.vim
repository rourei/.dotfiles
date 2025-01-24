" Highlight long lines (>100)
" origin: https://gist.github.com/fgarcia/9704429

autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929 
autocmd BufEnter * match OverLength /\%101v.*/
autocmd BufEnter * let w:long_line_match = 1

fu! LongLineHighlightToggle()
  highlight OverLength ctermbg=darkgrey guibg=#592929 
  if exists('w:long_line_match') 
    match OverLength //
    unlet w:long_line_match
  else 
    match OverLength /\%81v.*/
    let w:long_line_match = 1
  endif
endfunction
map <Leader>l :call LongLineHighlightToggle()<CR>

