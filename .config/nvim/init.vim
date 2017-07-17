if has('nvim')
    let s:editor_root=expand("/Users/johannes\ boyne/.config/nvim")
else
    let s:editor_root=expand("/Users/johannes\ boyne/.vim")
endif

set nocompatible              " be iMproved
filetype off                  " required!

set relativenumber
set number

" set the runtime path to include Vundle and initialize
set rtp+=/Users/johannes\ boyne/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('/Users/johannes\ boyne/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" " My bundles here:
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/camelcasemotion'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itspriddle/ZoomWin'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
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
Plugin 'rking/ag.vim'
Plugin 'kylef/apiblueprint.vim'
Plugin 'cespare/vim-toml'
Plugin 'neomake/neomake'
Plugin 'b4b4r07/vim-hcl'
"Plugin 'sourcegraph/sourcegraph-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'sheerun/vim-polyglot'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'zchee/deoplete-go', { 'do': 'make'}
" Track the engine.
" Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
Plugin 'isRuslan/vim-es6'
Plugin 'hdima/python-syntax'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<Leader><tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

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
set runtimepath^=/Users/johannes\ boyne/.vim/bundle/node
set smartindent
"set smarttab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
set encoding=utf-8
let g:ctrlp_working_path_mode = 'rc'
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:ackprg = 'ag --nogroup --nocolor --column --ignore node_modules'
let g:ag_prg='ag -S --nocolor --nogroup --column --ignore node_modules'

" Nodejs Linting
let g:neomake_javascript_enabled_makers = ['eslint']

" neomake
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

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
autocmd! BufWritePost,BufEnter * Neomake

"Clipboard Access
set clipboard=unnamed

" Do not create swap files, we're using git after all
set nobackup
set nowritebackup
set noswapfile

" Sourcegraph
nnoremap <F2> :GRAPH<CR>

" ------------------------------------------------------------------------------
" NERDTree
" ------------------------------------------------------------------------------
let g:NERDTreeSortOrder = ['\/$', '*', '\.swp$',  '\.bak$', '\~$']


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
nmap <Leader>p :CtrlPMixed<CR>

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

"Chromatica
let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'
let g:chromatica#enable_at_startup=1

" Neovim
" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

" Path to python interpreter for neovim
set runtimepath+=/Users/johannes\ boyne/.vim/bundle/deoplete.nvim/
let g:python3_host_prog  = 'python3'
" Skip the check of neovim module
call remote#host#RegisterPlugin('python3', '/Users/johannes\ boyne/.vim/bundle/deoplete.nvim/rplugin/python3/deoplete/deoplete.py', [
      \ {'sync': 1, 'name': 'DeopleteInitializePython', 'type': 'command', 'opts': {}},
     \ ])

let g:python3_host_skip_check = 1

" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 0
let g:deoplete#sources#go#json_directory = ''

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
