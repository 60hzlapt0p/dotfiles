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
set hlsearch
set cinoptions=l1
set modeline
set iminsert=0
set imsearch=0
set autoindent
set autochdir
set belloff=all
colorscheme habamax


set complete-=i
set smarttab

" Use CTRL-L to clear the highlighting of 'hlsearch' (off by default) and call
" :diffupdate.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set scrolloff=1
set sidescroll=1
set sidescrolloff=2

autocmd BufEnter * if &filetype == "go" | setlocal noexpandtab
autocmd BufNewFile,BufRead ?\+.c3 setf c
