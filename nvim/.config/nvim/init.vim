call plug#begin('~/.config/nvim/autoload/plugged')
	
    " Go language support
    Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

    " Theme
    Plug 'sainnhe/sonokai'

call plug#end()

" Set colour scheme
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai
