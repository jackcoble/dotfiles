" Vim-plug Plugin Manager
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
call plug#end()

" ========================
" Basic settings
" ========================
set mouse=a
set cursorline
set number
set ruler
set autowrite
set autoread
set autoindent

set undofile
set undodir=/tmp

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set clipboard=unnamedplus
set scrolljump=-15
set textwidth=78
set colorcolumn=78

" Searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase

" ========================
" Mappings
" ========================
let mapleader=","

" ========================
" Colour scheme
" ========================
colorscheme gruvbox

" ========================
" Plugin specific settings
" ========================
" [preservim/nerdcommenter]
" Don't auto-remove lines or insert extra spaces
let g:AutoPairsMultilineClose=0
let g:AutoPairsMapSpace=0
