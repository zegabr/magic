"folding and unfolding with 'za'-------------{{{
augroup fyletype_vim
    autocmd!
    autocmd Filetype vim setlocal foldmethod=marker
augroup END
"}}}

"Plugins installation--------{{{

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

"}}}

"Default settings---------{{{
set exrc "also source vimrcs inside directory of file
set nocompatible
set showcmd
set ruler 
set splitright
set title 
set scrolloff=8
hi Search ctermbg=yellow
hi Search ctermfg=black
colorscheme elflord
syntax on
set nohlsearch "search highlight off
set relativenumber "line numbers moving relatively
set number
set hidden
set noerrorbells
set nowrap
set incsearch "cursor moves as soon as typing search
set ignorecase "search ignore cases
set smartcase "search start to not ignore cases if search for uppercase letter
set shortmess+=A "ignores swap files error
set signcolumn=yes "leftmost column, used for linting
set colorcolumn=80
colorscheme gruvbox
"TODO: find why this not works (install undotree plugin and test)
"set noswapfile
"set nobackup
"set undodir=~/.vim/undodir
"set undofile

set statusline=File:\ %F\  
set statusline+=--Line:\ %l/%L
"}}}

"Mappings--------------{{{
:nnoremap <Space> <nop>
:vnoremap <Space> <nop>
:let mapleader = " "

"ctrl A, ctrl C, ctrl V, ctrl S and ctrl D equivalents
noremap <leader>a GVgg
noremap <leader>c "+y
noremap <leader>v "+p
noremap <leader>s :w<CR>
noremap <leader>d dd

"esc and save in jk 
inoremap jk <ESC>
vnoremap jk <ESC>

"go up, go down, 
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"toggle word case
inoremap <c-u> <esc>lviw~<esc>
nnoremap <c-u> viw~<esc>

"normal mode arrow keys, ident, save&quit, last edit pos, save
"nnoremap <Right> mijkgg=G'izz
"nnoremap <Left> :wq<CR>
"nnoremap <up> <C-o>
"nnoremap <down> :w<CR>
inoremap <Right> <nop>
inoremap <Left> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

vnoremap <Right> <nop>
vnoremap <Left> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>

nnoremap <Right> <nop>
nnoremap <Left> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>

"center things
nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz
nnoremap { {zz

"surround things (TODO: remove if any plugins already do it)
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

"edit my vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"}}}

" C/C++------------{{{
function! CPPSET()
set makeprg=g++\ -std=c++17\ -O2\ -Wfatal-errors\ %;
set errorformat=%f:%l:\ %m
set cindent
set textwidth=0
set nowrap
set ts=4 
set sw=4 
set sts=4 
set expandtab 
set autoindent

"abbreviations here
:iabbrev sp ' '
:iabbrev pl '\n'
:iabbrev ee &
:iabbrev adn and
:iabbrev endk endl
:iabbrev enld endl

endfunction
"}}}

" Python--------{{{
function! PYSET()
set tw=0
set nowrap
setlocal expandtab
setlocal smarttab
set ts=4 
set sw=4 
set sts=4 
set noexpandtab
endfunction
"}}}

"autocmd defaults-------{{{
"below command is for vimrc testing while ediing it
autocmd! bufwritepost .vimrc source $MYVIMRC
autocmd! bufwritepre,bufread *.cpp :normal gg=G
filetype on
autocmd! FileType python call PYSET() 
autocmd! Filetype cpp call CPPSET()
autocmd! Filetype c call CPPSET()
"}}}

"test stuff--------{{{

"}}}

