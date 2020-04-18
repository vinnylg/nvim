let g:nvim_config_root = stdpath('config')
let g:config_file_list = [
		\'plugins',
		\'options',
		\'maps',
		\'idention',
		\'search',
		\'performance',
		\'text-render',
		\'interface',
		\'folding',
		\'miscellaneous'
		\]

for f in g:config_file_list
	let file  = g:nvim_config_root . '/' . f . '.vim'
	if filereadable(file)
		execute 'source ' . file
	else
		call writefile(['"config file for ' . f],file,"as")
	endif
endfor
