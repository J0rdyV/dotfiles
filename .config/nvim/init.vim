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
set wildmode=longest,list,full

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
	Plug 'vimwiki/vimwiki'

	" Extensibility
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'vim-scripts/ReplaceWithRegister'
	Plug 'unblevable/quick-scope'

	" Testing
	Plug 'junegunn/goyo.vim'
	Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
	Plug 'kezhenxu94/vim-mysql-plugin'

call plug#end()

" Colors
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set background=dark
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox

" Fixes weird delays
set timeout timeoutlen=200 ttimeoutlen=100

" Remove trailing
autocmd FileType c,cpp,css,java,html,php,wiki autocmd BufWritePre <buffer> %s/\s\+$//e

" Restore cursor position
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Remaps
let mapleader = " "
map <F7> :setlocal spell! spelllang=nl<CR>
map <F8> :setlocal spell! spelllang=en_gb<CR>
nnoremap <Leader>s :.,$s/<C-r><C-w>*\c//gc<Left><Left><Left>
nnoremap <Leader>x :bd<CR>
nnoremap <Leader>g :G<CR>
nnoremap <Leader>gp :Gpush<CR>
nnoremap <Leader>gc :Gcommit -S<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>F :Rg<Space>
nnoremap <Leader>f :CocSearch<Space>
nnoremap <Leader>p :CtrlP<CR>
nnoremap S :%s//g<Left><Left>
map <leader>v :!opout <c-r>%<CR><CR>
imap jj <Esc>
inoremap <C-c> <esc>
inoremap <C-H> <C-W>

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

" Function for toggling the bottom statusbar:
let s:hidden_all = 0
function! ToggleHiddenAll()
	if s:hidden_all  == 0
		let s:hidden_all = 1
		set noshowmode
		set noruler
		set laststatus=0
		set noshowcmd
	else
		let s:hidden_all = 0
		set showmode
		set ruler
		set laststatus=2
		set showcmd
	endif
endfunction
nnoremap <leader>h :call ToggleHiddenAll()<CR>
nnoremap <leader>H :Goyo<CR>


let g:firenvim_config = { 'localSettings': {} }
let ls = g:firenvim_config['localSettings']
let ls['signposthelp.zendesk.com'] = { 'selector': '.zendesk-editor--rich-text-comment', 'takeover': 'always' }

"let ls['outlook.office.com'] = { 'selector': 'div[data-ogsc="#000000"]', 'takeover': 'always' }
let ls['outlook.office.com'] = { 'selector': 'div[role="textbox"]', 'takeover': 'always' }
autocmd BufEnter outlook.office.com_*.txt set filetype=markdown
autocmd BufEnter signposthelp.zendesk.com_*.txt set filetype=markdown
