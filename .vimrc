set nocompatible	" Disable compatibility with vi to avoid unexpected issues (recommended)
set background=dark
set tabstop=4
set shiftwidth=4

syntax on
filetype on
filetype plugin on	" Enable plugins and load them fo detected file type
filetype indent on	" Enable auto indentation
set nowrap			" Prevent line wraps
set showcmd			" Show (partial) command in status line
set showmatch		" Show matching brackets
set showmode		" Show current mode at the last line
set hlsearch		" Highlight all results
set ignorecase		" Do case insensitive matching
set smartcase		" Enable explicit search for capital letters
set incsearch		" Incremental search

highlight Comment ctermfg=darkgrey

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

" Enable code foding using the marker method (default marker: {{{ and }}}
augroup filetype_vim
		autocmd!
		autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

