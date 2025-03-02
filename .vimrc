" general
syntax on
filetype on
set termguicolors
set background=light
set backspace=indent,eol,start
set number
set spell

" plugins
call plug#begin()
" aesthetics
Plug 'sainnhe/everforest'
let g:everforest_better_performance = 1
let g:everforest_enable_italic = 1
let g:everforest_disable_italic_comment = 1
let g:everforest_transparent_background = 1

Plug 'vim-airline/vim-airline'
Plug 'lambdalisue/battery.vim'
let g:airline#extensions#battery#enables = 1
let g:airline_section_b = '%{battery#value()}%%'

call plug#end()

" recolouring
colorscheme everforest

" auto load after edits
autocmd BufWritePost $MYVIMRC source $MYVIMRC
