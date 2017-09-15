set nocompatible
:syntax on
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'davidhalter/jedi-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'joukevandermaas/vim-ember-hbs'
Plugin 'honza/vim-snippets'
Plugin 'lervag/vimtex'
Plugin 'lepture/vim-jinja'
Plugin 'Shougo/deoplete.nvim'
Plugin 'zchee/deoplete-jedi'
call vundle#end()
filetype plugin indent on
set nu
set relativenumber
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set hlsearch
syntax enable
set background=dark
set mouse=a
colorscheme solarized

" leader
:let mapleader = ","
:let maplocalleader = ","
" If french orthographic check is needed
" set spelllang=fr spell

" Vim statusbar
set laststatus=2

" Syntastic
let g:syntastic_python_checkers = ['flake8']


" YCM
let g:ycm_semantic_triggers =  {
    \   'c' : ['->', '.'],
    \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
    \             're!\[.*\]\s'],
    \   'ocaml' : ['.', '#'],
    \   'cpp,objcpp' : ['->', '.', '::'],
    \   'perl' : ['->'],
    \   'php' : ['->', '::'],
    \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
    \   'ruby' : ['.', '::'],
    \   'lua' : ['.', ':'],
    \   'erlang' : [':'],
    \   'elm' : ['.'],
\ }

let g:ycm_register_as_syntastic_checker = 1
" let g:ycm_server_python_interpreter = "/usr/local/bin/python"
let g:Show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
    \ 'venv': '\v[\/]venv$',
    \ 'dir': '\v[\/]reeport-front$',
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

" Deoplete
let g:deoplete#enable_at_startup = 1

" elm
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 1

" vimtex

" Startup
autocmd vimenter * NERDTree | wincmd w | wincmd j
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
