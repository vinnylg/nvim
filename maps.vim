" NOTE: Use command ':verbose map <key>' to make sure <key> is not mapped by
" other plugin before putting this into your config

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

nnoremap <space><space> :noh<cr>
