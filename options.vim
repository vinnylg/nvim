set cursorline
set number
set relativenumber
set showcmd
set showmatch
set laststatus=2
set mouse=a
set hidden
set matchpairs+=<:>

""Indention
set autoindent				"New lines inherit the indentation of previous lines
set tabstop=2					"Indent using n spaces
"set expandtab				"Convert tabs to spaces
set shiftwidth=2			"When shifting, indent using n spaces
set shiftround				"When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set smarttab					"Insert “tabstop” number of spaces when the “tab” key is pressed
set cindent
set backspace=indent,eol,start  "Allow backspace in insert mode

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

"Search
set hlsearch					"Enable search highlighting
set ignorecase				"Ignore case when searching
set incsearch					"Incremental search that shows partial matches
set smartcase					"Automatically switch search to case-sensitive when search query contains an uppercase letter

"Text
set linebreak 				" Avoid wrapping a line in the middle of a word
set encoding=utf-8		" Use an encoding that supports unicode
set scrolloff=5 			"The number of screen lines to keep above and below the cursor
set sidescrolloff=1 	"The number of screen columns to keep to the left and right of the cursor.
syntax enable							"Enable syntax highlighting
set nowrap						"Enable/Disable line wrapping.

"Miscellaneous
set confirm 					"Display a confirmation dialog when closing an unsaved file
set history=5000
set viminfo='100,<9999,s100
set noswapfile
set nobackup
set nowb
