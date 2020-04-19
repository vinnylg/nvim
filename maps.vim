" NOTE: Use command ':verbose map <key>' to make sure <key> is not mapped by
" other plugin before putting this into your config

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

nnoremap <silent> <space><space> :noh<cr>

function! OpenBufferNumber()
	let count = 0
	for i in range(0, bufnr("$"))
		if buflisted(i)
			let count += 1
		endif
	endfor
	return count
endfunction

function! CloseOnLast()
	if OpenBufferNumber() <= 1
		q
	else
		bd
	endif
endfunction

function! SaveCloseOnLast()
	if OpenBufferNumber() <= 1
		wq
	else
		w
		bd
	endif
endfunction

cnoreabbrev <silent> q call CloseOnLast()

cnoreabbrev <silent> wq call SaveCloseOnLast()

nmap <silent> <S-h> :bprevious<cr>
nmap <silent> <S-l> :bnext<cr>

nmap <silent> -- :split<cr>
nmap <silent> __ :vsplit<cr>
