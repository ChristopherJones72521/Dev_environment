filetype plugin indent on
syntax on

set term=builtin_xterm
set mouse=a
set number

filetype indent plugin on

call plug#begin('~/.vim/plugged')

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'scrooloose/nerdtree'

call plug#end()

nmap <c-h> :wincmd h<cr>
nmap <c-j> :wincmd j<cr>
nmap <c-k> :wincmd k<cr>
nmap <c-l> :wincmd l<cr>

nmap ,nt :NERDTreeToggle<cr>

" I'm done using swaps. They are annoying.
set noswapfile
set directory=~/.vim/swap

" Some shit I'm going to try
" Do not highlight the string we searched.
set nohlsearch 

" Highlight the searched string, while typing.
set incsearch

" Show matching brackets.
set showmatch

" Tab == 2 spaces.
set expandtab
set tabstop=2 
set shiftwidth=2
set softtabstop=2

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif
 
if has('vim_starting')
	if &compatible
		set nocompatible               " Be iMproved
	endif
 
" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
 
" Required:
	call neobundle#begin(expand('~/.vim/bundle/'))
 
" Let NeoBundle manage NeoBundle
" Required:
	NeoBundleFetch 'Shougo/neobundle.vim'
 
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
 
	NeoBundle 'Shougo/neosnippet'
"	NeoBundle 'Shougo/neocomplete'
	NeoBundle 'Shougo/neocomplcache'

	
	call neobundle#end()
 
" Required:
filetype plugin indent on
 
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
 NeoBundleCheck
