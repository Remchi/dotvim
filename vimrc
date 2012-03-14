set nocompatible

call pathogen#infect()

let mapleader = ','
set number
set ruler
syntax on

" Default Whitespace
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Wrapping text by default
set wrap
set linebreak

" Searching and highlights
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

" Keep more content at the bottom of the buffer
set scrolloff=3

" Highlight cursor line
set cursorline

" Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,assets/*,.idea/*

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Directories for swp files
set backupdir=~/dotvim/vim_backups//
set directory=~/dotvim/vim_backups//
set viewdir=~/dotvim/vim_backups//

" Show (partial) command in the status line
set showcmd

set hidden

set history=1000

" ===================================================================
"                          MAPPINGS
" ===================================================================
" Better ESC
inoremap <C-F> <ESC>
inoremap <C-c> <ESC>

" =============================================================
"                     Vim Terminal
" =============================================================

" 256 colors for terminal vim
set t_Co=256
" Making cursor a bar in insert mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set background=light
color solarized

