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
set numberwidth=2
set nowrap
set ignorecase
set noswapfile
set nobackup
set undofile
set incsearch
set nohlsearch
set cursorline
set scrolloff=5
set softtabstop=4
set tabstop=4
set shiftwidth=4

" Autocomplete
set wildmode=longest,list,full

" Colors
set colorcolumn=80
highlight Normal ctermbg=none
highlight ColorColumn ctermbg=235 ctermfg=none
highlight StatusLine ctermbg=15 ctermfg=235
highlight StatusLineNC ctermbg=7 ctermfg=0
highlight LineNr ctermbg=0 ctermfg=7
highlight CursorLine cterm=none
highlight CursorLineNr cterm=none
highlight NonText ctermfg=240
set background=light

" Enable mail writer for mutt
autocmd BufRead,BufNewFile /tmp/neomutt* autocmd BufReadPre <buffer> Mail()

" Enable html in twig
autocmd BufRead,BufNewFile *.twig set syntax=html

" Enable wrap in md
autocmd BufRead,BufNewFile *.md set wrap linebreak

" Remove trailing
autocmd FileType c,cpp,css,java,html,php,vimwiki,vim,md,markdown autocmd BufWritePre <buffer> %s/\s\+$//e

" Restore cursor position
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Remaps / Bindings

	" Map leader key
	let mapleader = " "

	" Spell checker
	map <F7> :setlocal spell! spelllang=nl<CR>
	map <F8> :setlocal spell! spelllang=en_gb<CR>

	" Map Ctrl-Backspace to delete the previous word in insert mode.
	imap <C-H> <C-W>

	" List folder content
	nnoremap <Leader>p :e .<CR>

	" Find in files
	" :set splitbelow | new | set filetype=markdown | set buftype=nowrite | r!rg test

	" Comment line
	nnoremap <Leader>cc :normal I# <CR>
	nnoremap <Leader>ch :CommentHTML<CR>

	" Delete buffer
	nnoremap <Leader>x :bd<CR>

	" Next buffer
	nnoremap <Leader>n :bn<CR>

	" Mail editor
	nnoremap <leader>m :Mail<CR>

	" Force Ctrl+C to ESC key
	inoremap <C-c> <esc>

	" allow the . to execute once for each line of a visual selection
	vnoremap . :normal .<CR>

	" Split navigation
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

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

function! CommentHTML()
	:normal I<!--
	:normal A-->
endfunction
com! CommentHTML call CommentHTML()

function! GenerateFilesList()
	:r!ls -la | awk '{print $9}' | grep '\....*'
	:%s/^/- /g
	:normal gg
	:normal dd
	:%norm! @t
	:normal gg
	:normal O# Generated Files
endfunction
com! GenerateFilesList call GenerateFilesList()

