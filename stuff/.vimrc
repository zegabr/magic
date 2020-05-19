"settings
"    testar coisas aqui
set mouse=a "ativa clique com mouse
set nocompatible
set showcmd
set ruler 
set splitright
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
:let mapleader = "-"
noremap <leader>a GVgg
noremap <leader>s :w<CR>
noremap <leader>c "+y
noremap <leader>v "+p
noremap <leader>d dd
inoremap <c-d> <esc>ddi

"stronger left and right
nnoremap L A<esc>
nnoremap H 0
inoremap jk <esc>
"turning off esc button and arrow keys
inoremap <esc> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>



"go up, go down, ident, save&quit, last edit pos, save
nnoremap <M-up> ddkP
nnoremap <c-k> ddkP
"TODO	put an if statement above to do it only if line number is not 1
nnoremap <M-down> ddp
nnoremap <c-j> ddp

inoremap <M-up> <ESC>ddkPi
inoremap <c-k> <esc>ddkPi
inoremap <M-down> <ESC>ddpi
inoremap <c-j> <esc>ddpi

inoremap <c-u> <esc>lviw~<esc>
nnoremap <c-u> viw~<esc>
"nnoremap <Right> mijkgg=G'izz
nnoremap <Left> :wq<CR>
nnoremap <up> <C-o>
nnoremap <down> :w<CR>

"center things
nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz
nnoremap { {zz

    "edit my vimrc
        nnoremap <leader>ev :vsplit $MYVIMRC<cr>

        "surrounds word with "
        nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

        " C/C++
        function! CPPSET()
        set makeprg=g++\ -std=c++14\ -O2\ -Wfatal-errors\ %;
    set errorformat=%f:%l:\ %m
        set cindent
        set tw=0
        set nowrap
        set ts=4 sw=4 sts=4 expandtab autoindent

        "abbreviations here
        :iabbrev adn and
        :iabbrev endk endl
        :iabbrev enld endl
        :iabbrev fauto for(auto &
                :iabbrev ee &
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

                if has("autocmd")
                "below command is for vimrc testing while ediing it
                autocmd bufwritepost .vimrc source $MYVIMRC
                autocmd bufwritepre,bufread *.cpp :normal gg=G
                filetype on
                autocmd FileType python call PYSET() 
                autocmd Filetype cpp call CPPSET()
                autocmd Filetype c call CPPSET()
                endif

