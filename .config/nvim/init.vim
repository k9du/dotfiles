set number
set autoindent


call plug#begin()

Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'ap/vim-css-color'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_theme='base16_gruvbox_dark_hard'
