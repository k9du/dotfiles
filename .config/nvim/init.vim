set number
set termguicolors
set tabstop=4
call plug#begin()

Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'ap/vim-css-color'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'taphill/gruvbox.nvim'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_theme='base16_gruvbox_dark_hard'

set bg=dark
colorscheme gruvbox

let g:neovide_transparency = 0.8
let g:neovide_refresh_rate = 60
