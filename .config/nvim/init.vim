syntax enable
filetype plugin indent on

" https://en.parceljs.org/hmr.html#safe-write
set backupcopy=yes

" Show tabs
" set list listchars=nbsp:¬,tab:>_,space:·,trail:·,extends:>
set list listchars=nbsp:¬,tab:>_,trail:·,extends:>

" SETtings
set encoding=utf-8
set clipboard=unnamedplus
set smartindent
set number
set numberwidth=2
set wrap
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
set colorcolumn=80
set splitbelow

" Autocomplete
set wildmode=longest,list,full

" Include plugins
for f in split(glob('$XDG_CONFIG_HOME/nvim/plugins/*.vim'), '\n')
    exe 'source' f
endfor

" Transparent background
highlight Normal ctermbg=none

" Enable html in twig
autocmd BufRead,BufNewFile *.twig set syntax=html

" Enable wrap in md/txt
autocmd BufRead,BufNewFile *.md,*.txt set wrap linebreak nonumber columns=80 filetype=markdown

" Remove trailing
autocmd FileType c,cpp,css,java,html,php,vimwiki,md,markdown autocmd BufWritePre <buffer> %s/\s\+$//e

" Restore cursor position
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Remaps / Bindings

	" Map leader key
	let mapleader = " "

	" Moving over wrapped lines
	map j gj
	map k gk

	" Spell checker
	map <F7> :setlocal spell! spelllang=nl<CR>
	map <F8> :setlocal spell! spelllang=en_gb<CR>

	" Map Ctrl-Backspace to delete the previous word in insert mode.
	imap <C-H> <C-W>

	" List folder content
	nnoremap <Leader>p :e .<CR>

	" Find in files
	nnoremap <Leader>f :new \| terminal!rg -i 

	" Comment line
	nnoremap gc :normal I# <CR>
	nnoremap gh :normal I<!--<CR><ESC>:normal A--><CR>

	" ToDo items in markdown
	nnoremap tc :normal o- [ ] 
	nnoremap Tc :normal O- [ ] 
	nnoremap t. :s/\[.\]/[.]/g<CR>
	nnoremap td :s/\[.\]/[v]/g<CR>
	nnoremap tx :s/\[.\]/[x]/g<CR>
	nnoremap t<Space> :s/\[.\]/[ ]/g<CR>
	nnoremap cs` :normal bi`<ESC>ea`<ESC>
	" remove duplicates
	" :'<,'>!awk '\!seen[$0]++'

	" Run visual selection as shell command
	vnoremap R :w !zsh<cr>
	" Open visual selection in brave
	vnoremap O :w !brave<cr>

	" Buffer navigation
	nnoremap <Leader>x :bd<CR>
	nnoremap <Leader>n :bn<CR>
	nnoremap Bd :bd<CR>
	nnoremap Bn :bn<CR>
	nnoremap Bp :bp<CR>

	" Force Ctrl+C to ESC key
	nnoremap <C-c> <esc>
	" Fix for Ctrl+C delay https://linuxsheet.com/answers/150093/
	let g:ftplugin_sql_omni_key = '<C-j>'
	" If this does not work, see mappings with :verbose imap <buffer> <C-c>
	" And edit manually in files

	" allow the . to execute once for each line of a visual selection
	vnoremap . :normal .<CR>

	" Split navigation
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

function! ReformatHTML()
	:s/<[^>]*>/\r&\r/g
	:g/^$/d
	normal gg=G
	echo 'formatted to multiple lines'
endfunction
com! ReformatHTML call ReformatHTML()

