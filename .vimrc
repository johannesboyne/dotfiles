set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" " My bundles here:
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-dispatch'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/camelcasemotion'
Bundle 'tpope/vim-surround'
Bundle 'altercation/vim-colors-solarized'
Bundle 'itspriddle/ZoomWin'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-markdown'
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'terryma/vim-expand-region'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/moll/vim-node.git'
Bundle 'git://github.com/digitaltoad/vim-jade.git'
Bundle 'flazz/vim-colorschemes'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'airblade/vim-gitgutter'
Bundle 'wavded/vim-stylus'
"Bundle 'walm/jshint.vim'
"Bundle 'sleistner/vim-jshint'
Bundle 'bling/vim-bufferline'

let mapleader = ","

colorscheme busybee
" colorscheme railscasts
filetype plugin indent on     " required!
syntax on
syntax enable
set laststatus=2
set nu
set runtimepath^=~/.vim/bundle/node
set smartindent
set smarttab
set mouse=a
set encoding=utf-8
"set tabstop=4
"set shiftwidth=4
set expandtab
let g:ctrlp_working_path_mode = 'rc'
let g:ackprg = 'ag --nogroup --nocolor --column'

set nocursorcolumn
set nocursorline
syntax sync minlines=256

" Highlight search results
set hlsearch
" Invisible characters
autocmd BufEnter * set listchars=tab:▸\ ,eol:¬

"Clipboard Access
set clipboard=unnamed

" Do not create swap files, we're using git after all
set nobackup
set nowritebackup
set noswapfile

" ------------------------------------------------------------------------------
" Tabs vs. Spaces
" ------------------------------------------------------------------------------
" Spaces instead of tabs
set expandtab
" 2 spaces for each tab
set tabstop=2
" 2 spaces for indention
set shiftwidth=2

" CtrlP
nmap <Leader>p :CtrlPMRU<CR>

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Airlin Buffers
let g:bufferline_echo = 0
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>wb :Bclose<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" projects
" command CCP CtrlP ~/Developing_Zwtg/cc/FILIALE3.0/cockpit/src/Shopmacher/App/PagesBundle/Resources/public/js/pageeditor/

"
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
