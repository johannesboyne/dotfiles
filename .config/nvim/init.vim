" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'bling/vim-airline'
Plug 'vim-scripts/BusyBee'
Plug 'rakr/vim-one'
Plug 'neomake/neomake'
Plug 'b4b4r07/vim-hcl'
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'git://git.wincent.com/command-t.git'
Plug 'git://github.com/moll/vim-node.git'
Plug 'udalov/kotlin-vim'
Plug 'cloudhead/neovim-fuzzy'
Plug 'pangloss/vim-javascript'
Plug 'aklt/plantuml-syntax'

" Initialize plugin system
call plug#end()

set nocompatible
set relativenumber
set number

filetype plugin indent on

let mapleader=","
set backspace=2
set list
set showmatch
set showmode
set splitbelow
set splitright
set t_Co=256
set fillchars+=vert:\|

let g:javascript_plugin_flow = 1
" TRUE COLOR
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


colorscheme busybee
let g:airline_theme='one'

syntax on
syntax enable
set laststatus=2
set nu
set runtimepath^=/Users/johannes_boyne/.vim/bundle/node
set smartindent
"set smarttab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
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
set runtimepath+=$XDG_CONFIG_HOME/nvim/plugged/deoplete.nvim
set completeopt+=noinsert,noselect
set completeopt-=preview

hi Pmenu    gui=NONE    guifg=#c5c8c6 guibg=#373b41
hi PmenuSel gui=reverse guifg=#c5c8c6 guibg=#373b41

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let g:deoplete#enable_at_startup = 1
set encoding=utf-8
