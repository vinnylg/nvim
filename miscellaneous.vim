"config file for miscellaneous
set nocompatible
filetype off
filetype plugin indent on
set autoread                    "Automatically re-read files if unmodified inside Vim.
set backspace=indent,eol,start  "Allow backspacing over indention, line breaks and insertion start.
set backupdir=~/.cache/vim      "Directory to store backup files.
set confirm                     "Display a confirmation dialog when closing an unsaved file.
set dir=~/.cache/vim            "Directory to store swap files.
set formatoptions+=j            "Delete comment characters when joining lines.
set hidden                      "Hide files in the background instead of closing them.
set history=1000                "Increase the undo limit.
set nomodeline                  "Ignore file’s mode lines; use vimrc configurations instead.
set noswapfile                  "Disable swap files.
set nrformats-=octal            "Interpret octal as decimal when incrementing numbers.
set shell                       "The shell used to execute commands.
set spell                       "Enable spellchecking.
set wildignore+=.pyc,.swp       "Ignore files matching these patterns when opening files based on a glob pattern.
set autowrite                   "Automatically save before commands like :next and :make