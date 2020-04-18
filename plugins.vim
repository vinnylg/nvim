" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
"	Plug 'vim-airline/vim-airline'
"	Plug 'vim-airline/vim-airline-themes'
"	Plug 'scrooloose/nerdtree'
"	Plug 'scrooloose/nerdcommenter'
"	Plug 'Xuyuanp/nerdtree-git-plugin'
"	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"	Plug 'ryanoasis/vim-devicons'
"	Plug 'vim-scripts/vim-webdevicons'
"	Plug 'tpope/vim-surround'
"	Plug 'airblade/vim-gitgutter'
"	Plug 'ctrlpvim/ctrlp.vim'
"	Plug 'christoomey/vim-tmux-navigator'
"	Plug 'majutsushi/tagbar'
"	Plug 'luochen1990/rainbow'
"	Plug 'pangloss/vim-javascript'
"	Plug 'ap/vim-css-color'
"	Plug 'mxw/vim-jsx'
"	Plug 'elzr/vim-json'
"	Plug 'jiangmiao/auto-pairs'
"	Plug 'mbbill/undotree'
call plug#end()


let g:config_plugin_list = [
			\'coc',]
"			\'airline',
"			\'nerdtree',
"			\'nerdcommenter',
"			\'gitgutter',
"			\'ctrlp',
"			\'tmux',
"			\'tagbar',
"			\'javascript',
"			\'css',
"			\'rainbow',
"			\'csv',
"			\'jxs',
"			\'json',
"			\'autopairs',
"			\'undotree'
"			\ ]


for f in g:config_plugin_list
	let file = g:nvim_config_root . '/plugins/' . f . '.vim'
	if filereadable(file)
		execute 'source' . file
	else
		call writefile(['"config file for plugin ' . f],file,"as")
	endif
endfor
