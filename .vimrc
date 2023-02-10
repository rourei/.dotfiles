set background=dark
set tabstop=4

syntax on
filetype on
set number			" Show line numbers
set cursorline		" Highlight line where cursor is currently at
set cursorcolumn
set nowrap			" Prevent line wraps
set showcmd			" Show (partial) command in status line
set showmatch		" Show matching brackets
set hlsearch		" Highlight all results
set ignorecase		" Do case insensitive matching
set smartcase		" Enable explicit search for capital letters
set incsearch		" Incremental search


" fg => ForeGround color
highlight LineNr ctermfg=grey
highlight Comment ctermfg=darkgrey

" Further hints; e.g. organizing in sections: https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
