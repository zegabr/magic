
"//===================mappings==============================
"//cntrl A, cntrl C e cntrl V
nmap <C-a> GVgg
nmap <C-s> :w<CR>
nmap <C-c> "+y
nmap <C-v> "+p

"//sobe,desce, identa, salva e sai
nmap <Up> ddkP 
nmap <Down> ddp
nmap <Right> mijkgg=G'izz
nmap <Left> :wq<CR>


"//=======================================================
"//  unmap arrows from insert mode and try harder
ino <Up> <Nop>
ino <Down> <Nop>
ino <Right> <Nop>
ino <Left> <Nop>

vno <Up> <Nop>
vno <Down> <Nop>
vno <Right> <Nop>
vno <Left> <Nop>




set nocompatible
set mouse=a "ativa clique com mouse
set splitright
set showcmd
set ruler 
set title 

"scroll is off until cursor is 3 lines close to limits
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

"//============================usefull for life==========================
"^x^o auto completion (does not work with c or c++ unless ctags is installed)
filetype plugin on
set omnifunc=syntaxcomplete#complete

set shellcmdflag=-ic "make aliases usable

"below command is for vimrc testing while ediing it
if has("autocmd")
autocmd bufwritepost .vimrc source $MYVIMRC
filetype on
autocmd FileType javascript setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd FileType python setlocal ts=4 sw=4 sts=4 noexpandtab 
autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype cpp setlocal ts=2 sw=2 sts=2 expandtab autoindent
autocmd Filetype c setlocal ts=2 sw=2 sts=2 expandtab autoindent
endif

