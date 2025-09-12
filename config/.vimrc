set nocompatible	" Disable compatibility with vi to avoid unexpected issues (recommended)
set background=dark
set tabstop=4
set expandtab		" Use spaces instead of tabs
set shiftwidth=2
set autoindent      " Applies indentation of current line to new line

syntax on
filetype on
filetype plugin on	  " Enable plugins and load them for detected file type
filetype indent on	  " Enable auto indentation
set nowrap			  " Prevent line wraps
set showcmd			  " Show (partial) command in status line
set showmatch		  " Show matching brackets
set showmode		  " Show current mode at the last line
set hlsearch		  " Highlight all results
set ignorecase		  " Do case insensitive matching
set smartcase		  " Enable explicit search for capital letters
set incsearch		  " Incremental search
set conceallevel=0    " Don't hide characters
set foldmethod=syntax " Folding based on syntac of current window
set foldlevel=3       " Keep first few fold levels open

" HIGHLIGHTING ----------------------------------------------------------- {{{

" Xterm Color Reference Table ->  https://github.com/guns/xterm-color-table.vim

highlight Comment ctermfg=8

highlight clear SpellBad
highlight SpellBad ctermfg=1
highlight clear SpellLocal

" }}}

" COMMANDS --------------------------------------------------------------- {{{

:command Jsonf %!jq .
:command Bs :normal! 0i#!/usr/bin/env bash<ESC>
:command ScriptDir :normal! 0iSCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"<ESC>

" }}}

" KEY MAPPINGS --------------------------------------------------------------- {{{

" General
imap <C-H> <C-W>
inoremap jk <Esc>
" Moving lines, see https://vim.fandom.com/wiki/Moving_lines_up_or_down#Mappings_to_move_lines
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
" Plugins
map <F2> :NERDTreeToggle<CR>

" }}}

" NAVIGATION ------------------------------------------------------------- {{{

" Enable line numbers
set number
set relativenumber
highlight LineNr ctermfg=grey

" Highlight line where cursors is currently at
set cursorline		
" set cursorcolumn
" Remove the underline caused by enabling cursorline
highlight clear CursorLine
" Set the line numbering to white background and black digits
highlight CursorLineNR ctermbg=white
highlight CursorLineNR ctermfg=black

" Hard-wrap text at the configured long line limit
" see https://stackoverflow.com/a/50415982
set textwidth=100
set wrap
set linebreak

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" Enable code folding using the marker method (default marker: {{{ and }}}
augroup filetype_vim
		autocmd!
		autocmd FileType vim setlocal foldmethod=marker
augroup END

" Toggle fold setting based on file length (see https://vi.stackexchange.com/a/44899)
autocmd! BufRead * if line('$') < 60 | setlocal nofoldenable | else | setlocal foldenable | endif

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

" PLUGINS VIA VIM-PLUG ------------------------------------------------------------ {{{

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" }}}

" PLUGIN CONFIG ------------------------------------------------------------ {{{

" Can be toggled manually with Shift + i
let NERDTreeShowHidden=1
" IndentLine / Conceal Settings
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

" }}}

