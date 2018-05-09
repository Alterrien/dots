set nocompatible
:syntax on
filetype off
source ~/.config/nvim/bepo.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'ntpeters/vim-better-whitespace'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'rust-lang/rust.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'metakirby5/codi.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'fatih/vim-go'
    Plugin 'vim-syntastic/syntastic'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'Shougo/deoplete.nvim'
    Plugin 'Shougo/neco-syntax'
    Plugin 'scrooloose/nerdtree'
    Plugin 'ElmCast/elm-vim'
    " Plugin 'Valloric/YouCompleteMe'
    Plugin 'mattn/emmet-vim'
    Plugin 'elixir-lang/vim-elixir'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'garbas/vim-snipmate'
    Plugin 'honza/vim-snippets'
    Plugin 'lervag/vimtex'
    Plugin 'lepture/vim-jinja'
    Plugin 'zchee/deoplete-jedi'
    Plugin 'zchee/deoplete-clang'
    Plugin 'Shougo/neoinclude.vim'
    Plugin 'fishbullet/deoplete-ruby'
    Plugin 'luochen1990/rainbow'
call vundle#end()
filetype plugin indent on
set nu
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set hlsearch
set relativenumber
set mouse=a
syntax enable
set background=dark
colorscheme solarized

" leader
:let mapleader = ","
:let maplocalleader = ','
" If french orthographic check is needed
" set spelllang=fr spell

" Vim statusbar
set laststatus=2

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'

" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_user_command = [
    \ '.git', 'cd %s && git ls-files . -co --exclude-standard',
    \ 'find %s -type f'
    \ ]

" Latexmk
let g:vimtex_compiler_enabled = 1
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latekmk = {
    \ 'backend': 'nvim',
    \ 'continuous': 1,
    \ 'build_dir': 'out/',
    \ }

" 80 lignes marker
set colorcolumn=80

" Highlight current line
set cursorline
nnoremap <silent> <Leader>c :set cursorcolumn! <CR>

" Powerline fonts for airline
let g:airline_powerline_fonts = 1

" Remaps
:nnoremap <Tab> <c-w>w
:nnoremap <F7> :SyntasticCheck <CR>

" Folds
set foldcolumn=2
set foldmethod=indent
noremap <space> za


" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
let g:deoplete#sources#clang#sort_algo = 'priority'

" elm
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 1

" rainbow
let g:rainbow_active = 1

" Startup
autocmd vimenter * NERDTree | wincmd l | wincmd j
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
