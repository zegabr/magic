"settings
"    testar coisas aqui
set mouse=a "ativa clique com mouse
set nocompatible
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


"===================mappings==============================
"cntrl A, cntrl C e cntrl V
noremap <C-a> GVgg
noremap <C-s> :w<CR>
noremap <C-c> "+y
noremap <C-v> "+p
noremap <c-d> dd
inoremap <c-d> <esc>ddi

"go up, go down, ident, save&quit, last edit pos, save
nnoremap <M-Up> ddkP
"TODO	put an if statement above to do it only if line number is not 1

nnoremap <M-Down> ddp
inoremap <M-Up> <ESC>ddkPi
inoremap <M-Down> <ESC>ddpi
inoremap <c-u> <esc>lviw~<esc>
nnoremap <c-u> viw~<esc>
nnoremap <Right> mijkgg=G'izz
nnoremap <Left> :wq<CR>
nnoremap <up> <C-o>
nnoremap <down> :w<CR>

"center things
nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz
nnoremap { {zz


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
  nnoremap <right> <Nop> 

endfunction

"HTML CSS
function! HTMLCSSSET()
  set ts=2 sw=2 sts=2 expandtab
  nnoremap <right> <Nop>
endfunction

"Javascript
function! JSSET()
  set ts=4 sw=4 sts=4 noexpandtab
  nnoremap <right> <Nop> 
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


