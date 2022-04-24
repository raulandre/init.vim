set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:OmniSharp_server_stdio = 0

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' 
Plug 'https://github.com/preservim/nerdtree' 
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'https://github.com/vim-airline/vim-airline' 
Plug 'https://github.com/lifepillar/pgsql.vim' 
Plug 'https://github.com/ap/vim-css-color' 
Plug 'https://github.com/rafi/awesome-vim-colorschemes' 
Plug 'https://github.com/neoclide/coc.nvim'  
Plug 'https://github.com/ryanoasis/vim-devicons' 
Plug 'https://github.com/tc50cal/vim-terminal' 
Plug 'https://github.com/preservim/tagbar' 
Plug 'https://github.com/terryma/vim-multiple-cursors' 
Plug 'https://github.com/puremourning/vimspector'
Plug 'OmniSharp/omnisharp-vim'
set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview 

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

:colorscheme gruvbox

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
nnoremap <C-q> :TerminalSplit bash<CR>
