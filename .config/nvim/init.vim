set nocompatible
syntax enable
filetype plugin indent on

" https://en.parceljs.org/hmr.html#safe-write
set backupcopy=yes

" Show tabs
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>

" SETtings
set encoding=utf-8
set clipboard=unnamedplus
set smartindent
set nu
set relativenumber
set nowrap
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nohlsearch
set t_ut=""
set cursorline
set scrolloff=5
set softtabstop=4
set tabstop=4
set shiftwidth=4

" Autocomplete
"set wildmode=longest,list,full

" Plugins
call plug#begin('~/.vim/plugged')

	" Colorscheme
	Plug 'morhetz/gruvbox'

	" Function
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'jremmen/vim-ripgrep'
	Plug 'tpope/vim-fugitive'
	Plug 'kien/ctrlp.vim'
	Plug 'vim-airline/vim-airline'
	"Plug 'vimwiki/vimwiki'

	" Extensibility
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'unblevable/quick-scope'

	" Testing
	Plug 'junegunn/goyo.vim'
	Plug 'kezhenxu94/vim-mysql-plugin'

call plug#end()

" Colors
colorscheme gruvbox
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set background=dark
let g:gruvbox_contrast_dark = 'soft'

" Enable transparenty
let g:gruvbox_transparent_bg = 1
autocmd VimEnter * hi Normal ctermbg=none

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Remove trailing
autocmd FileType c,cpp,css,java,html,php,wiki,vim autocmd BufWritePre <buffer> %s/\s\+$//e

" Start build script on save scss file
au BufWritePost *.scss silent! !eval '[ -f "scripts/buildCss.sh" ] && scripts/buildCss.sh' &

" Restore cursor position
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Remaps

	" Map leader key
	let mapleader = " "

	" Spell checker
	map <F7> :setlocal spell! spelllang=nl<CR>
	map <F8> :setlocal spell! spelllang=en_gb<CR>

	" Substitute current word
	nnoremap <Leader>s :.,$s/<C-r><C-w>*\c//gc<Left><Left><Left>

	" Delete buffer
	nnoremap <Leader>x :bd<CR>

	" Next buffer
	nnoremap <Leader>n :bn<CR>

	" Open Git fugitive tab
	nnoremap <Leader>g :G<CR>

	" Git commit
	nnoremap <Leader>gc :Gcommit -S<CR>

	" Git push
	nnoremap <Leader>gp :Gpush<CR>

	" Ripgrep search
	nnoremap <Leader>f :Rg<Space>

	" Coc Search
	nnoremap <Leader>F :CocSearch<Space>

	" Open file
	nnoremap <Leader>p :CtrlP<CR>

	" Minimal editor
	nnoremap <leader>h :Goyo<CR>

	" Force Ctrl+C to ESC key
	inoremap <C-c> <esc>

	" GoTo code navigation
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" allow the . to execute once for each line of a visual selection
	vnoremap . :normal .<CR>

	" Split navigation
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" QuickScope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#ebdbb2' gui=underline ctermfg=9 cterm=underline
highlight QuickScopeSecondary guifg='#689d6a' gui=underline ctermfg=15 cterm=underline

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()

" Writing
function! Writer()
	setlocal spell spelllang=en_gb
	setlocal formatoptions=t1
	setlocal textwidth=80
	setlocal noautoindent
	setlocal tabstop=5
	setlocal expandtab
endfunction
com! WR call Writer()

