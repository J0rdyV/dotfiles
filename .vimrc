" Config by Jry
set nocompatible

syntax enable
filetype plugin on 

set clipboard=unnamedplus
set noerrorbells
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set t_ut=""
"set relativenumber
set cursorline
set cmdheight=2
set scrolloff=10

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set background=dark
let g:gruvbox_contrast_dark = 'hard'

set timeout timeoutlen=200 ttimeoutlen=100

set path+=**
set wildmenu
set wildignore+=**/vendor/**

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
call plug#end()

let mapleader = " "
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <Leader>s :.,$s/<C-r><C-w>*\c//gc<Left><Left><Left>
" nnoremap <Leader>p :e .<CR>
nnoremap <Leader>x :bd<CR>
nnoremap <Leader>g :G<CR>
nnoremap <Leader>gp :Gpush<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>f :Rg 
"nnoremap jk <C-c> 

colorscheme gruvbox

