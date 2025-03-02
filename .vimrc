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

" math
Plug 'lervag/vimtex'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" writing
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'preservim/vim-pencil'
let g:pencil#weapModeDefault = 'soft'
let g:airline_section_x = '%{PencilMode()}'
let g:pencil#mode_indicators = {'hard': 'H', 'auto': 'A', 'soft': 'S', 'off': '',}
call plug#end()

" recolouring
colorscheme everforest

" auto load after edits
autocmd BufWritePost $MYVIMRC source $MYVIMRC
