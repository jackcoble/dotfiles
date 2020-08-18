" Vim-plug Plugin Manager
call plug#begin('~/.local/share/nvim/plugged')
" NERDTree
Plug 'preservim/nerdtree'
" Tmux Navigator (use in conjunction with settings in my .tmux.conf)
Plug 'christoomey/vim-tmux-navigator'
" Language syntax
Plug 'fatih/vim-go'
Plug 'cespare/vim-toml'
" Status Bar
Plug 'vim-airline/vim-airline'
" Auto close brackets, parens, etc
Plug 'jiangmiao/auto-pairs'
" Easier commenting
Plug 'preservim/nerdcommenter'
" Git status in bottom bar
Plug 'airblade/vim-gitgutter'
" Fuzzy finding files
Plug 'junegunn/fzf'
" Visual indicator as to what has been yanked
Plug 'machakann/vim-highlightedyank'
" Colour theme
Plug 'tomasr/molokai'
call plug#end()

" ========================
" Basic settings
" ========================
" Enable mouse support
set mouse=a

" Highlight the current line the cursor is on
set cursorline

" Show the cursor position
set ruler

" Read/write file when moving between buffers
set autowrite
set autoread

" Always auto ident 
set autoindent

" Undo functionality even after closing
set undofile
set undodir=/tmp

" Tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

" Clipboard
set clipboard=unnamedplus

" Faster scrolling
set scrolljump=-15

" Enforce column length
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

" Replace <Esc> with C-c
inoremap <C-c> <Esc>
nnoremap <C-c> :wa<cr>

" Toggle NERDTree
nnoremap <leader>a :NERDTreeToggle<cr>

" Open FZF with C-p
if executable('fzf')
    nnoremap <C-p> :FZF<cr>
endif

" Better vertical movements (primarily for wrapped lines)
nnoremap j gj
nnoremap k gk

" ========================
" Colour scheme
" ========================
let g:molokai_original=1
colorscheme molokai

" ========================
" Plugin specific settings
" ========================
" [preservim/nerdcommenter]
" Don't auto-remove lines or insert extra spaces
let g:AutoPairsMultilineClose=0
let g:AutoPairsMapSpace=0

" [airblade/vim-gitgutter]
" Git Gutter always shows
set signcolumn=yes

" [fatih/vim-go]
" Auto import on save
let g:go_fmt_command = "goimports"
