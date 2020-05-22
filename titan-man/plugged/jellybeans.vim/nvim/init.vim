"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

" Basic
"set number
set number relativenumber
"set mouse=a
set background=dark
set splitbelow splitright
set nocompatible
set ignorecase
set smartcase
syntax on

colorscheme elflord

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Autocomplete
set wildmode=longest,list,full

"====[ Set up smarter search behaviour ]=======================

set incsearch       "Lookahead as search pattern is specified
set ignorecase      "Ignore case in all searches...
set smartcase       "...unless uppercase letters used

set hlsearch        "Highlight all matches
highlight clear Search
highlight       Search    ctermfg=White  ctermbg=Black  cterm=bold
highlight    IncSearch    ctermfg=White  ctermbg=Red    cterm=bold


"=====[ Comments are important ]==================
"highlight Comment term=bold ctermfg=white


"=====[ Miscellaneous features (mainly options) ]=====================

set title           "Show filename in titlebar of window
set titleold=
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)

set nomore          "Don't page long listings

set autowrite       "Save buffer automatically when changing files
set autoread        "Always reload buffer when external changes detected

"           +--Disable hlsearch while loading viminfo
"           | +--Remember marks for last 500 files
"           | |    +--Remember up to 10000 lines in each register
"           | |    |      +--Remember up to 1MB in each register
"           | |    |      |     +--Remember last 1000 search patterns
"           | |    |      |     |     +---Remember last 1000 commands
"           | |    |      |     |     |
"           v v    v      v     v     v
set viminfo=h,'500,<10000,s1000,/1000,:1000

"set backspace=indent,eol,start      "BS past autoindents, line boundaries,
                                    "     and even the start of insertion

"set fileformats=unix,mac,dos        "Handle Mac and DOS line-endings
                                    "but prefer Unix endings

set wildmode=list:longest,full      "Show list of completions
                                    "  and complete as much as possible,
                                    "  then iterate full completions

set complete-=t                     " I don't use tags, so no need to search for them

set infercase                       "Adjust completions to match case

"set noshowmode                      "Suppress mode change messages

set updatecount=10                  "Save buffer every 10 chars typed

autocmd BufNewFile,BufRead linux.txt set filetype=sh
autocmd BufNewFile,BufRead json.txt set filetype=vb
