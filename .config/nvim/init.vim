call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 1

let g:deoplete#enable_at_startup = 1

syntax on
filetype on

hi Comment cterm=italic

set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set hidden
set wrap linebreak nolist
