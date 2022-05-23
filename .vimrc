set background=dark
syntax enable
filetype plugin on
filetype indent on

"set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" set 7 lines to the cursor - when moving vertically using j/k
set so=7

set wildmenu

"Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Highlight search results
set hlsearch

" For regular expression turn magic on
set magic

"Show matching brackets when text indicator is over them
set showmatch

"no annoying bells on errors
set noerrorbells
set novisualbell

set encoding=utf8

"use spaces instead of tabs
set expandtab

"Be smart when using tabs
set smarttab

"Linebreak on 500 characters
set lbr
set tw=500

set ai "auto indent
set si "smart indent
set wrap "wraplines

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim',{'as':'dracula'}
Plug 'itchyny/lightline.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround', {'branch':'master'}
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
"Plug 'folke/tokyonight.nvim', {'branch':'main'}
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

set termguicolors
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
"colorscheme tokyonight
colorscheme onedark
set laststatus=2

let g:lightline = {
        \ 'colorscheme':'one',
        \ }
let g:gitgutter_max_signs = 500
let g:gitgutter_max_signs = -1
