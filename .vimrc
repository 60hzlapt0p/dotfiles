syntax on
filetype plugin indent on
set tabstop=4
set ttimeout
set ttimeoutlen=100
set shiftwidth=4
set expandtab
set guifont=Iosevka\ 18
set guioptions-=m
set guioptions-=T
set noesckeys
set number
set ignorecase
set smartcase
set incsearch
set cinoptions=l1
set modeline
set iminsert=0
set imsearch=0
set autoindent
set autochdir
set belloff=all
set scrolloff=8
set complete-=i
set smarttab
colorscheme habamax

let g:netrw_banner = 0
let g:netrw_liststyles = 2
let g:netrw_list_hide = &wildignore
let g:netrw_winsize = 25
let mapleader = "\<space>"
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap / /\v
vnoremap / /\v
nnoremap <Leader>pv :Ex<CR>
autocmd BufEnter * if &filetype == "go" | setlocal noexpandtab
autocmd BufNewFile,BufRead ?\+.c3 setf c
