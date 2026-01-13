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
hi ColorColumn ctermbg=15 ctermfg=0

autocmd FileType markdown,text set wrap linebreak nonumber columns=80 filetype=markdown
autocmd FileType twig set syntax=html
autocmd FileType c,cpp,css,java,html,php,vimwiki,markdown,sql,text,sh autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

map j gj
map k gk
map <F7>  :setlocal spell! spelllang=nl<CR>
map <F8>  :setlocal spell! spelllang=en_gb<CR>
map <F9>  :normal!ggVGy<CR>
map <F10> :normal!ggVGp<CR>
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


"──────────────────────────────────────────
" Git-aware LineNr highlighter – minimal
"──────────────────────────────────────────
function! GitLineNrDiffSetup() abort
  " 1. Highlight + sign
  highlight default GitChangeLineNr ctermfg=15 gui=bold guifg=#ffffff
  sign define GitChangeLineNr numhl=GitChangeLineNr

  " 2. Autocommands: repaint on open & after every write
  augroup GitLineNrDiff
    autocmd!
    autocmd BufEnter,BufWritePost,TextChanged,TextChangedI *
          \ call s:GitLineNrRefresh()
  augroup END
endfunction

" Core worker: repaint signs but keep the view
function! s:GitLineNrRefresh() abort
  if &buftype !=# '' | return | endif
  " save cursor/scroll :contentReference[oaicite:1]{index=1}
  let view = winsaveview()

  " clear previous signs
  " sign API docs :contentReference[oaicite:2]{index=2}
  execute 'sign unplace * buffer=' . bufnr('%')

  " gather changed lines
  let diff  = systemlist('git diff -U0 --no-color -- ' .
        \ shellescape(expand('%:~:.')))
  if v:shell_error | call winrestview(view) | return | endif

  " (re)place signs
  let id = 9000
  for l in diff
    if l =~# '^@@'
      let start = str2nr(matchstr(l, '+\zs\d\+\ze'))
      let cnt   = max([1, str2nr(matchstr(l, '+\d\+,\zs\d\+\ze'))])
      for n in range(start, start + cnt - 1)
        call sign_place(id, '', 'GitChangeLineNr', bufnr('%'),
              \ {'lnum': n, 'priority': 9000})
        let id += 1
      endfor
    endif
  endfor

  " restore cursor/scroll :contentReference[oaicite:3]{index=3}
  call winrestview(view)
endfunction

" Initialise once
call GitLineNrDiffSetup()
"──────────────────────────────────────────
