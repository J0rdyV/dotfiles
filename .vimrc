" Config by Jry
set nocompatible

syntax enable
filetype plugin on 

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
set relativenumber
set cursorline
set scrolloff=10
"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey
set background=dark
set cmdheight=1

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

" .,$s/authentication*\c/updates/gc
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

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
	augroup WSLYank
		autocmd!
		autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
	augroup END
endif

