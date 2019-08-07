" Basic setup ---------------------------------------------------------------------------
"


set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Plug
" Install Plug if not already.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'yggdroot/indentline'
call plug#end()
" /Plug

let mapleader = " "
set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8
set number relativenumber
set numberwidth=4
set splitbelow
set splitright
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent
set softtabstop=2
set showcmd
set wildmode=longest,list,full
set wildmenu
set noswapfile
" Allow project (dir) specific vimrc files
set exrc
set secure



" Basic Mappings ------------------------------------------------------------------------
"


" Easier commands
nnoremap ; :
nnoremap : ;

" ciw by default
nnoremap cw ciw

" Change window with comma
noremap , <C-w><C-w>

" Change buffers with F1/F2
noremap <F1> :bprev<CR>
noremap <F2> :bnext<CR>

" Y behaves like C or D
nnoremap Y y$

" Select line without indentation
nnoremap vv ^vg_

" H,L jumps to start, end. J,K moves 5 lines
nnoremap H ^
nnoremap L g_
noremap K 5k
noremap J 5j

" Swap default paste behaviours
nnoremap p P
nnoremap P p

" Remap join line
nnoremap <C-j> J

" Map <C-L> (redraw screen) to also turn off search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko



" Plugin settings -----------------------------------------------------------------------
"


" NERDTree
map <leader>n ;NERDTreeToggle<CR>
" Exit if NERDTree is the last window open.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
" Start NERDTree if vim opens a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif


" Rainbow Parens
let g:rainbow_active = 1



" Theming -------------------------------------------------------------------------------
"


colors dracula
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
highlight Comment cterm=italic gui=italic

" Transparent background
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red


" Misc ----------------------------------------------------------------------------------
"


" Disable automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
  au!
  au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \     execute 'normal! g`"zvzz' |
    \ endif
augroup END

" Copy/paste to/from system clipboard by default
set clipboard=unnamedplus
