set mouse=a
set background=dark
set shiftwidth=2
set tabstop=2
set expandtab
set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set incsearch       " Incremental search
set autowrite       " Automatically save before commands like :next and :make
set hidden          " Hide buffers when they are abandoned
set hlsearch
set title
set number          " show line numbers
set guioptions-=T
let $BASH_ENV = "~/.bash_aliases"
let g:netrw_liststyle=3

" remember cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  filetype plugin indent on
endif

if has("syntax")
  syntax on
  if has('gui_running')
    set background=light
    colorscheme solarized
  else
    set background=dark
  endif
endif
