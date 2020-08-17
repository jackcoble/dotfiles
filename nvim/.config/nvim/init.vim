call plug#begin('~/.config/nvim/autoload/plugged')
	
    " Go language support
    Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
    
    " Markdown
    Plug 'plasticboy/vim-markdown'

    " Auto close parens, brackets, braces, etc
    Plug 'jiangmiao/auto-pairs'

    " Rust
    Plug 'rust-lang/rust.vim'

    " Theme
    Plug 'sainnhe/sonokai'

call plug#end()

" Set colour scheme
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai

" ====================
" Basic setup
" ====================
filetype plugin indent on

let g:go_fmt_command = "goimports"

set encoding=utf-8
set fileencoding=utf-8

" Tabs
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" Map leader to ,
let mapleader=','

" ====================
" Visual settings
" ====================
syntax on
set ruler
set number

" ===================
" Mappings
" ===================

" Tabbing
vnoremap < <gv
vnoremap > >gv

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
