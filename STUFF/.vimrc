set nocompatible

"//========================useful for competitive==========
"contrl C contrl A contrl V (windows like)
set mouse=a "ativa click na tela
:map <C-a> GVgg
:map <C-s> :w<CR>
:map <C-c> "+y
:map <C-v> "+p

syntax on
"search highlight
set hls 

"line numbers moving relatively
set relativenumber 

set number

set ts=2  
set sw=2 
set sts=2 
set expandtab 
set autoindent

"cursor moves as soon as typing search
set incsearch 

"search ignore cases
set ignorecase 

"search start to not ignore cases if search for uppercase letter
set smartcase 

"ignores swap files error
set shortmess+=A 

colorscheme elflord


"//===================mappings=============================good for c++
"//volta pra a ultima posicao de editada
:nmap <Up>  <C-O>

"//identa (TODO: unset this for python code)
:nmap <Right> jkgg=G <C-O> <C-O>

"//salva
:nmap <Down> :w<CR>

"//salva e sai
:nmap <Left> :wq<CR>
"//=========================================================

set splitright
set showcmd
set ruler 
set title 
"scroll is off until cursor is 3 lines close to limits
set scrolloff=3
hi Search ctermbg=yellow
hi Search ctermfg=black



"//============================usefull for life==========================
"^x^o auto completion (does not work with c or c++ unless ctags is installed)
filetype plugin on
set omnifunc=syntaxcomplete#complete


"make aliases usable
set shellcmdflag=-ic

"below command is for vimrc testing while ediing it
if has("autocmd")
autocmd bufwritepost .vimrc source $MYVIMRC
filetype on
autocmd FileType javascript setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd FileType python setlocal ts=4 sw=4 sts=4 noexpandtab 
autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 sts=2 expandtab
endif

