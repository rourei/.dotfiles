set nocompatible	" Disable compatibility with vi to avoid unexpected issues (recommended)
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab		" Use spaces instead of tabs
set autoindent      " Applies indentation of current line to new line

syntax on
filetype on
filetype plugin on	" Enable plugins and load them for detected file type
filetype indent on	" Enable auto indentation
set nowrap			" Prevent line wraps
set showcmd			" Show (partial) command in status line
set showmatch		" Show matching brackets
set showmode		" Show current mode at the last line
set hlsearch		" Highlight all results
set ignorecase		" Do case insensitive matching
set smartcase		" Enable explicit search for capital letters
set incsearch		" Incremental search

" HIGHLIGHTING ----------------------------------------------------------- {{{

" Xterm Color Reference Table ->  https://github.com/guns/xterm-color-table.vim

highlight Comment ctermfg=8

highlight clear SpellBad
highlight SpellBad ctermfg=1
highlight clear SpellLocal

" }}}

" NAVIGATION ------------------------------------------------------------- {{{

" Enable line numbers
set number
highlight LineNr ctermfg=grey

" Highlight line where cursors is currently at
set cursorline		
" set cursorcolumn
" Remove the underline caused by enabling cursorline
highlight clear CursorLine
" Set the line numbering to white background and black digits
highlight CursorLineNR ctermbg=white
highlight CursorLineNR ctermfg=black

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" Enable code folding using the marker method (default marker: {{{ and }}}
augroup filetype_vim
		autocmd!
		autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded
set statusline=

" Status line left side
" %F: Full path of current file
" %M: Modified flag
" %Y: File type
" %R: Read-only flag
set statusline+=\ %F\ \|\ %M\ \|\ %Y\ %R

" Use a divider to separate the left side from the right side
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c 

"Always show the status line 
set laststatus=2

" }}}
