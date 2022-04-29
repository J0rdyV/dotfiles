set nocompatible
syntax enable
filetype plugin indent on

" https://en.parceljs.org/hmr.html#safe-write
set backupcopy=yes

" Show tabs
set list listchars=nbsp:¬,tab:>_,space:·,trail:·,extends:>

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
call plug#begin('~/.config/nvim/plugged')

	" Colorscheme
	Plug 'morhetz/gruvbox'

	" Function
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'jremmen/vim-ripgrep'
	Plug 'tpope/vim-fugitive'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vimwiki/vimwiki'

	" Extensibility
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'

	" Filetypes
	Plug 'mechatroner/rainbow_csv'
	Plug 'ap/vim-css-color'
	Plug 'evidens/vim-twig'

	" Snippets - https://medium.com/@jimeno0/snipets-in-vim-neovim-2ed9ab89befc
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'

	" Testing
	Plug 'junegunn/goyo.vim'

call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

" Colors
colorscheme gruvbox
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set background=dark
let g:gruvbox_contrast_dark = 'soft'

" Enable transparenty
let g:gruvbox_transparent_bg = 1
autocmd VimEnter * hi Normal ctermbg=none

" Enable Goyo for mutt
autocmd BufRead,BufNewFile /tmp/neomutt* autocmd BufReadPre <buffer> Mail()
autocmd BufRead,BufNewFile /tmp/neomutt* autocmd BufWritePre <buffer> %s/$/<br>/

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Remove trailing
autocmd FileType c,cpp,css,java,html,php,vimwiki,vim autocmd BufWritePre <buffer> %s/\s\+$//e

" vimwiki - default markdown
let g:vimwiki_list = [{'path': '~/.config/nvim/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]

" Start build script on save scss file
au BufWritePost *.scss silent! !eval '[ -f "scripts/buildCss.sh" ] && scripts/buildCss.sh' &

" Restore cursor position
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Remaps / Bindings

	" Map leader key
	let mapleader = " "

	" Spell checker
	map <F7> :setlocal spell! spelllang=nl<CR>
	map <F8> :setlocal spell! spelllang=en_gb<CR>

	" Substitute current word
	nnoremap <Leader>s :.,$s/<C-r><C-w>*\c//gc<Left><Left><Left>

	" Map Ctrl-Backspace to delete the previous word in insert mode.
	imap <C-H> <C-W>

	" Delete buffer
	nnoremap <Leader>x :bd<CR>

	" Next buffer
	nnoremap <Leader>n :bn<CR>

	" Open Git fugitive tab
	nnoremap <Leader>g :G<CR>

	" Git commit
	nnoremap <Leader>gc :Gcommit -S<CR>

	" Git push
	nnoremap <Leader>gp :Git push<CR>

	" Ripgrep search
	nnoremap <Leader>f :Rg<Space>

	" Coc Search
	nnoremap <Leader>F :CocSearch<Space>

	" Open file
	nnoremap <Leader>p :CtrlP<CR>

	" Minimal editor
	nnoremap <leader>h :Goyo \| set linebreak \| set wrap<CR>

	" Mail editor
	nnoremap <leader>m :Mail<CR>

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

	"autoclose tags
	" inoremap ( ()<Left>
	" inoremap { {}<Left>
	" inoremap [ []<Left>
	" inoremap " ""<Left>
	" inoremap ' ''<Left>

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
function! Mail()
	set spell spelllang=nl
	set formatoptions=t1
	set textwidth=80
	set noautoindent
	set tabstop=5
	set expandtab
	set wrap
	echo 'Enabled email writing mode'
endfunction
com! Mail call Mail()

function! ReformatHTML()
	:s/<[^>]*>/\r&\r/g
	:g/^$/d
	normal gg=G
	echo 'formatted to multiple lines'
endfunction
com! ReformatHTML call ReformatHTML()
