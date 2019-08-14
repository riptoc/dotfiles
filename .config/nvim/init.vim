
"     ____  _       __            _                _
"    / __ \(_)___  / /_____  ____( )_____   _   __(_)___ ___  __________
"   / /_/ / / __ \/ __/ __ \/ ___/// ___/  | | / / / __ `__ \/ ___/ ___/
"  / _, _/ / /_/ / /_/ /_/ / /__  (__  )   | |/ / / / / / / / /  / /__
" /_/ |_/_/ .___/\__/\____/\___/ /____/    |___/_/_/ /_/ /_/_/   \___/
"        /_/
"
" https://github.com/riptoc/dotfiles
"

" Basic setup {{{

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
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'yggdroot/indentline'
Plug 'lilydjwg/colorizer'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " requires neovim
Plug 'ervandew/supertab'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips' " Snippets plugin
Plug 'honza/vim-snippets' " The snippets themselves
Plug 'dense-analysis/ale'
call plug#end()
" /Plug

" True colours
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
" Syntax highliting
syntax enable
" Mapleader
let mapleader = " "
" Indentation
filetype plugin indent on
set autoindent
" Tabs
set tabstop=8
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
" Make backspace work as expected
set backspace=indent,eol,start
" No swap files
set noswapfile
set nobackup
" No octal counting
set nrformats-=octal
" Encoding
set encoding=utf-8
" Relative line numbers
set number relativenumber
set numberwidth=4
" Folding with markers
set foldmethod=marker
" Change default split direction
set splitbelow
set splitright
" Show (partial) command in the last line of the screen.
set showcmd
" Let airline show the status
set noshowmode
" Completion
set wildmode=longest,list,full
set wildmenu
" Allow project (dir) specific vimrc files
set exrc
set secure
" Copy/paste to/from system clipboard by default
set clipboard=unnamedplus
" Delete comment character when joining commented lines
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j
endif
" History length
if &history < 1000
  set history=1000
endif
" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

" }}}

" Basic Mappings {{{

" Easier commands
nnoremap ; :
nnoremap : ;

" Quicker save
nnoremap <leader>s :w<CR>

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

" Move normally with wrap
nnoremap j gj
nnoremap k gk

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

" Toggle wrap
nnoremap <leader>w :set wrap!<CR>

" Align blocks of text and keep selected
vmap < <gv
vmap > >gv

" }}}

" Plugin settings {{{

" NERDTree
map <leader>n ;NERDTreeToggle<CR>
" Exit if NERDTree is the last window open.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
" Start NERDTree if vim opens a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Airline
" Show all buffers when only one tab open
let g:airline#extensions#tabline#enabled = 1

" Rainbow Parens
let g:rainbow_active = 1

" NERDComment
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
" Map toggle to leader /
noremap <leader>/ :call NERDComment(0, "toggle")<CR>

" Deoplete
let g:deoplete#enable_at_startup = 1
" Use smart_case
call deoplete#custom#option('smart_case', v:true)

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-j>"

" Supertab
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabDefaultCompletionType = "<c-n>"

" }}}

" Theming {{{

set background=dark
colorscheme gruvbox
let g:airline_theme='zenburn'
let g:airline_powerline_fonts = 1
highlight Comment cterm=italic gui=italic

" Transparent background
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

" }}}

" Misc {{{

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

" Remove whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" }}}
