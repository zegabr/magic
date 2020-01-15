"===================mappings==============================
"cntrl A, cntrl C e cntrl V
nmap <C-a> GVgg
nmap <C-s> :w<CR>
nmap <C-c> "+y
nmap <C-v> "+p

"go up, go down, ident, save&quit, last edit pos, save
nmap <C-Up> ddkP
nmap <C-Down> ddp
nmap <Right> mijkgg=G'izz
nmap <Left> :wq<CR>
nmap <up> <C-o>
nmap <down> :w<CR>

"center things
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"quick pairs
imap '' ''<ESC>i
imap "" ""<ESC>i
imap { {}<ESC>i<CR><CR><CR><ESC>kko
imap [ []<ESC>i

"settings
set nocompatible
set mouse=a "ativa clique com mouse
set splitright
set showcmd
set ruler 
set title 
set scrolloff=3
hi Search ctermbg=yellow
hi Search ctermfg=black
colorscheme elflord
syntax on
set hls "search highlight
set relativenumber "line numbers moving relatively
set number
set incsearch "cursor moves as soon as typing search
set ignorecase "search ignore cases
set smartcase "search start to not ignore cases if search for uppercase letter
set shortmess+=A "ignores swap files error

"^x^o auto completion (does not work with c or c++ unless ctags is installed)
filetype plugin on
set omnifunc=syntaxcomplete#complete


" C/C++
function! CPPSET()
  set makeprg=g++\ -std=c++14\ -O2\ -Wall\ %;
  set errorformat=%f:%l:\ %m
  set cindent
  set tw=0
  set nowrap
  set ts=2 sw=2 sts=2 expandtab autoindent
endfunction

" Python
function! PYSET()
  set tw=0
  set nowrap
  setlocal expandtab
  setlocal smarttab
  set ts=4 sw=4 sts=4 noexpandtab
  nmap <right> <Nop> 
endfunction

"HTML CSS
function! HTMLCSSSET()
  set ts=2 sw=2 sts=2 expandtab
  nmap <right> <Nop>
endfunction

"Javascript
function! JSSET()
  set ts=4 sw=4 sts=4 noexpandtab
  nmap <right> <Nop> 
endfunction

"below command is for vimrc testing while ediing it
if has("autocmd")
autocmd bufwritepost .vimrc source $MYVIMRC
filetype on
autocmd FileType javascript call JSSET()
autocmd FileType python call PYSET() 
autocmd Filetype html call HTMLCSSSET()
autocmd Filetype css  call HTMLCSSSET()
autocmd Filetype cpp call CPPSET()
autocmd Filetype c call CPPSET()
endif


