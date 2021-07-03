"folding and unfolding with 'za'-------------{{{
augroup fyletype_vim
    autocmd!
    autocmd Filetype vim setlocal foldmethod=marker
augroup END
"}}}

"Default settings---------{{{
set exrc "also source vimrcs inside directory of file
set nocompatible
set showcmd
set ruler 
set splitright splitbelow
set hidden
set title 
set scrolloff=8
set wildmode=longest,list,full
syntax on
set relativenumber "line numbers moving relatively
set number
set noerrorbells
set nowrap
set cursorline cursorcolumn

set nohlsearch "search highlight off
set incsearch "cursor moves as soon as typing search
set ignorecase "search ignore cases
set smartcase "search start to not ignore cases if search for uppercase letter

set signcolumn=yes "leftmost column, used for linting
set colorcolumn=80

set shortmess+=A "ignores swap files error
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set statusline=File:\ %F\  
set statusline+=--Line:\ %l/%L

" sets tab width in spaces
set softtabstop=2
" sets width to be used when using identation in normal mode 
set shiftwidth=2
" width of tab char
set tabstop=2
" if set uses spaces intead of tabs
set noexpandtab

"Remove trailing space on save
autocmd BufWritePre * %s/\s\s+$//e
"}}}

"Mappings--------------{{{
nnoremap <Space> <nop>
vnoremap <Space> <nop>
let mapleader = " "

"Navigate splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"ctrl A, ctrl C, ctrl V, ctrl S and ctrl D equivalents
set clipboard+=unnamedplus
noremap <leader>a GVgg
noremap <leader>c "+y
noremap <leader>v "+p
noremap <leader>s :s<CR>
noremap <leader>q :q<CR>
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

"replace all ocurrence
nnoremap S :%s//gI<Left><Left><Left>
"replace ocurrences
nnoremap <leader>r :%s///g<Left><Left>
nnoremap <leader>rc :%s///gc<Left><Left>
"}}}

" C/C++------------{{{
function! CPPSET()
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
"color scheme
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" FuzzyFinder FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'airblade/vim-rooter'

" git vim fugitive
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" for Quick fixes (this uses ripgrep, ripgrep must be installed TODO: learn how to use
"Plug 'mileszs/ack.vim'

" Undotree
Plug 'mbbill/undotree'

" easymotion
Plug 'easymotion/vim-easymotion'

" NerdTree
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'

" Conquer of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" use gruvbox theme ----- {{{
colorscheme gruvbox
let g:airline_theme='minimalist'
set background=dark
" }}}

" FuzzyFinder FZF settings ---- {{{
" automatically chooses between project files and git files
function! s:find_files()
    let git_dir = system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
    if git_dir != ''
        execute 'GFiles' git_dir
    else
        execute 'Files'
    endif
endfunction
command! ProjectFiles execute s:find_files()

nnoremap <C-p> :ProjectFiles<CR>
noremap <C-b> :Buffers<CR>
noremap <C-f> :Rg!<CR>
nnoremap <leader>gc :GBranches<CR>

"}}}
" NerdTree Setings ---{{{
let g:NERDTreeGitStatusConcealBrackets = 1
let g:NERDTreeLimitedSyntax = 1
nnoremap <C-t> :NERDTreeToggle<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11
"change to command below if using windows or macos
"set guifont=DroidSansMono\ Nerd\ Font:h11
let g:airline_powerline_fonts = 1
filetype plugin on
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
"}}}
" Git gutter -----{{{
set updatetime=100
"}}}
" Git Fugitive -------{{{
nnoremap <leader>gs :G<CR>
" }}}
" undotree ---- {{{
nnoremap <F5> :UndotreeToggle<CR>
let g:undotree_WindowLayout = 2
" }}}
" easymotion ----{{{
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" search by f{char}{label}
nmap f <Plug>(easymotion-bd-f)
"}}}
" Coc settings ------{{{
let g:coc_global_extensions = ['coc-json']
"}}}
"}}}

