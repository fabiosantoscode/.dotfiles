


" Stamp stuff
set nocp
set backspace=2
set number
set mouse=a

" syntax highlighting
set syn=on
filetype on
filetype plugin on
syntax enable

" indentation
set autoindent
set smartindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" spell checking
if version >= 700
    set spl=en spell
    set nospell
endif

" searching
set incsearch
set hlsearch

" status line
set statusline=%F%m%r%h%w\ [%l,%v]

" system clipboard
silent! set clipboard=unnamed
silent! set clipboard=unnamedplus

" load other stuff
source ~/CloudPT/configs/vimmacros.vim

silent! set wildignorecase

function! DefaultColorScheme()
    " :try :catch doesn't work in my gVim
    let x = "nothing"
    silent! let x = g:colors_name
    if x == "nothing"
        colorscheme desert
    endif
endfunction

call DefaultColorScheme()