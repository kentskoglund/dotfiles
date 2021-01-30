"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
let mapleader=" "

"==== [ Color Schemes ] ==============
set background=dark
"let g:gruvbox_contrast_dark = 'hard'
"colorscheme gruvbox_mod
"colorscheme rdark-terminal2
"colorscheme PaperColor
colorscheme jellybeans

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }

map <F2> :colorscheme gruvbox_mod<CR>
map <F3> :colorscheme PaperColor<CR>
map <F4> :colorscheme rdark-terminal2<CR>
map <F5> :colorscheme default<CR>
map <F6> :colorscheme jellybeans<CR>

"==== [ Basic ] ==============
syntax on
set nu rnu
set mouse=a
set splitbelow splitright "fix splitting
set nocompatible
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
"set nowrap
set incsearch
set ignorecase
set smartcase
set cursorline
set title           "Show filename in titlebar of window
set titleold=		"Reset titlebar"
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
set autowrite       "Save buffer automatically when changing files
set autoread        "Always reload buffer when external changes detected
set wildmode=list:longest,full      "Show list of completions and complete as much as possible, then iterate full completions
set complete-=t                     " I don't use tags, so no need to search for them
set infercase                       "Adjust completions to match case
set updatecount=10                  "Save buffer every 10 chars typed
set viminfo=h,'500,<10000,s1000,/1000,:1000
set autoread        "Always reload buffer when external changes detected
set wildmode=longest,list,full	" Autocomplete
set laststatus=2
set hlsearch
highlight clear Search
highlight       Search    ctermfg=White  ctermbg=DarkBlue  cterm=bold
highlight    IncSearch    ctermfg=White  ctermbg=Red    cterm=bold

" Remove trailing whitespace on save
"autocmd BufWritePre * %s/\s\+$//e

" Enable and disable auto comment
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>

" Enable and disable numbering
map <leader>n :set nonu nornu<CR>
map <leader>N :set nu rnu<CR>

" Shortcut split opening
nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>
map <leader><Up> :resize +2<CR>
map <leader><Down> :resize -2<CR>
map <leader><Left> :vertical resize +2<CR>
map <leader><Right> :vertical resize -2<CR>

" shell shebang
map <leader>b i#!/bin/sh<CR><CR>

" Alias replace all to S
map <leader>s :%s///gI<Left><Left><Left><Left>

"==== [ Copy / paste to clipboard ] ==============
vnoremap <C-y> "+y
map <C-p> "+P

"====[ 'Vim-plug' plugin manager ]======================
":PlugInstall - Install plugins
":PlugUpgrade - Upgrade vim-plug itself
":PlugUpdate - Update plugins
":PlugClean - Clean removed plugins

call plug#begin('~/.vim/plugged')
" Declare the list of plugins
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'mboughaba/i3config.vim'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
" Color-schemes
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'nanotech/jellybeans.vim'
Plug 'ajh17/Spacegray.vim'
call plug#end()

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"====[\ 'Vim-plug' plugin manager ]======================

"====[ 'NERDTree plugin ]======================
" Open NERDTree automatically when vim starts up
"autocmd VimEnter * NERDTree

" Toggle NERDTree CTRL-n
nmap <C-n> :NERDTreeToggle<CR>

" Quit VIM if NERDTree is only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"====[\ 'NERDTree plugin ]======================

autocmd BufNewFile,BufRead linux.txt set filetype=sh
autocmd BufNewFile,BufRead json.txt set filetype=vb
