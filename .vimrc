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
Bundle 'walm/jshint.vim'

colorscheme busybee
" colorscheme camo
" colorscheme kellys
" colorscheme railscasts
filetype plugin indent on     " required!
syntax on
syntax enable
set laststatus=2
set nu
set runtimepath^=~/.vim/bundle/node
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
let g:ctrlp_working_path_mode = 'c'
let g:ackprg = 'ag --nogroup --nocolor --column'

" projects
command CCP CtrlP ~/Developing_Zwtg/cc/FILIALE3.0/cockpit/src/Shopmacher/App/PagesBundle/Resources/public/js/pageeditor/

"
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.
