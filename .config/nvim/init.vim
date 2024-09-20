syntax on
set number
set nowrap
set colorcolumn=80
set list listchars=nbsp:¬,tab:>_,trail:·,extends:>
set backupcopy=yes
set clipboard=unnamedplus
set numberwidth=2
set ignorecase
set undofile
set nohlsearch
set wildmode=longest,list,full
set background=light
set laststatus=0
set tabstop=4
set shiftwidth=4
"set noswapfile
colorscheme vim
hi LineNr ctermfg=7
hi Statement ctermfg=3
"hi Visual cterm=reverse

autocmd FileType markdown,text set wrap linebreak nonumber columns=80 filetype=markdown
autocmd FileType twig set syntax=html
autocmd FileType c,cpp,css,java,html,php,vimwiki,markdown,sql,text,sh autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

map j gj
map k gk
map <F7> :setlocal spell! spelllang=nl<CR>
map <F8> :setlocal spell! spelllang=en_gb<CR>
map <F9> :normal!ggVGy<CR>
let mapleader = " "
nnoremap <Leader>p :e .<CR>
nnoremap <Leader>f :new \| terminal!rg --no-ignore -i<Space>''<Left>
nnoremap <Leader>g :new \| terminal!find -name '**'<Left><Left>
nnoremap <Leader>x :bd<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <leader>t yiw:term!trans -no-ansi <C-r>"<CR>
vnoremap <leader>t y:term!trans -no-ansi '<C-r>"'<CR>
vnoremap R :w !$SHELL<CR>
vnoremap O :w !$BROWSER<CR>
vnoremap . :normal .<CR>
inoremap <ESC> <Space>
