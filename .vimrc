set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'MaxWayt/ack.vim'

Plugin 'jnwhiteh/vim-golang'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line





scriptencoding utf-8
set fileencoding=utf-8

set nocompatible
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

filetype plugin on
filetype indent on

set t_Co=256
set background=dark
let g:gruvbox_italicize_comments=0
colorscheme gruvbox

set number
set showcmd
set mouse=a
set cursorline

set list
set listchars=tab:>\ 

highlight ExtraWhitespaces  ctermbg=RED guibg=#A00000
highlight ExtraCaractere    ctermbg=124 guibg=#A00000

inoremap ''; '';<esc>hi
inoremap '' ''<esc>i
inoremap ""; "";<esc>hi
inoremap "" ""<esc>i
inoremap (( ()<esc>i
inoremap ((; ();<esc>hi
inoremap [[ []<esc>i
inoremap [[; []<esc>hi
inoremap {{ {<cr>}<esc>ki<right><cr>
inoremap {{; {<cr>};<esc>ki<right><cr>

set nobackup
set nowritebackup


set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar. Fix for TagBar.

set autowrite

let g:ycm_collect_identifiers_from_tags_files = 1
set tags=./tags

if filereadable(".vim.custom")
  source .vim.custom
endif
