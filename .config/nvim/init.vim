if has('nvim')
    let s:editor_root=expand("~/.config/nvim")
else
    let s:editor_root=expand("~/.vim")
endif

set nocompatible              " be iMproved
filetype off                  " required!

set relativenumber
set number

"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" " My bundles here:
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-dispatch'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/camelcasemotion'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itspriddle/ZoomWin'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-markdown'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'git://github.com/moll/vim-node.git'
Plugin 'git://github.com/digitaltoad/vim-jade.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'wavded/vim-stylus'
"Plugin 'walm/jshint.vim'
"Plugin 'sleistner/vim-jshint'
Plugin 'bling/vim-bufferline'
Plugin 'fatih/vim-go'
Plugin 'Blackrush/vim-gocode'
Plugin 'benmills/vimux'
Plugin 'slim-template/vim-slim'
Plugin 'git://github.com/mhinz/vim-startify.git'
Plugin 'mxw/vim-jsx'
Plugin 'elixir-lang/vim-elixir'
Plugin 'markcornick/vim-terraform'
Plugin 'thinca/vim-ref'
Plugin 'archSeer/elixir.nvim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = ","
set backspace=2           " Makes backspace not behave all retarded-like
set list                  " Show invisible characters
set showmatch             " Highlight matching braces
set showmode              " Show the current mode on the open buffer
set splitbelow            " Splits show up below by default
set splitright            " Splits go to the right by default
set t_Co=256
set fillchars+=vert:\|

 colorscheme busybee
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

"set nocursorcolumn
"set nocursorline
" ser cursorlines

hi CursorLine   guibg=#303030 gui=none ctermbg=238 cterm=NONE
hi CursorColumn guibg=#303030 gui=none ctermbg=238 cterm=NONE
hi VertSplit ctermfg=238 ctermbg=238 term=NONE

:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

set cursorcolumn
set cursorline

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

" Spell Checker
let s:cpo_save = &cpo
set cpo&vim
syn spell toplevel

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

" rerun fig
map <Leader>dr :call VimuxRunCommand("fig up")<CR>
map <Leader>rr :call VimuxRunCommand("fig run app rspec")<CR>
map <Leader>dt :VimuxInterruptRunner<CR>

" set / unset language spelling
map <Leader>se :set spell spelllang=en_us<CR>
map <Leader>sd :set spell spelllang=<CR>
map <F7> :TagbarToggle<CR>

" color column
:set colorcolumn=+1        " highlight column after 'textwidth'
:set colorcolumn=+1,+2,+3  " highlight three columns after 'textwidth'
:highlight ColorColumn guibg=#2e2e2e ctermbg=236
:set colorcolumn=80
:set list
:highlight SpecialKey ctermbg=234

" tagbar

let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:test'
    \ ]
\ }
