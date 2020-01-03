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


"//===================mappings==============================
"//volta pra a ultima posicao de editada
:nmap <Up>  <C-O> 

"//identa (TODO: unset this for python code)
:nmap <Right> mijkgg=G'i

"//salva
:nmap <Down> :w<CR>

"//salva e sai
:nmap <Left> :wq<CR>
"//=======================================================
"// TODO: unmap arrows from insert mode and try harder



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
autocmd Filetype cpp setlocal ts=2 sw=2 sts=0 expandtab autoindent
autocmd Filetype c setlocal ts=2 sw=2 sts=0 expandtab autoindent
endif

