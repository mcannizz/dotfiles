execute pathogen#infect()
syntax on
set background=dark
colorscheme solarized
set ts=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent

let mapleader = "-"
let maplocalleader = "\\"

" Make '-' delete the current line and paste it below.
noremap <leader>- ddp
" Make '_' delete the current line and paste it above.
noremap <leader>_ ddkkp

" Ctrl-U in insert mode capitalizes the word just typed.
inoremap <c-u> <esc>bveUEi

" Same as above, but for normal mode.
" TODO: Should preserve cursor position, but currently moves it to
" the end of the altered word.
" TODO: off for now, conflicts with 'scroll up half a screen'
"nnoremap <c-u> bveUE

" Edit this file easily
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Add quotes around words
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" In visual mode too
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>`>ll
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>`>ll

nnoremap H ^
nnoremap L $

" Make it easier leave insert mode 
inoremap jk <esc>
inoremap <esc> <nop>

" Autocmds
augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END


