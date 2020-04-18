"config file for plugin nerdtree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

map <C-z> :NERDTreeToggle<CR>

let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
		\ "Staged"    : "#0ee375",  
		\ "Modified"  : "#d9bf91",  
		\ "Renamed"   : "#51C9FC",  
		\ "Untracked" : "#FCE77C",  
		\ "Unmerged"  : "#FC51E6",  
		\ "Dirty"     : "#FFBD61",  
		\ "Clean"     : "#87939A",   
		\ "Ignored"   : "#808080"   
		\ }      
let g:NERDTreeIgnore = ['^node_modules$']
