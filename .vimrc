"pathogen
execute pathogen#infect()
execute pathogen#helptags()

"4 spaces tap
set wrap

set showcmd
set hlsearch

filetype plugin indent on

"always keep the status line
set laststatus=2


set tabstop=4
set expandtab
set shiftwidth=4


"conf for syntastic 
let g:syntastic_python_checkers=['flake8'] 
"set statusline += %#warningmsg# 
"set statusline += %{SyntasticStatuslineFlag()} 
"set statusline += %*


set autoread
set noswapfile

"set ve=all

"e ++ff=unix %


let mapleader = ";"

function! Run()
    if &filetype=='python'
        !python %
    elseif &filetype=='shell'
        !sh %
    elseif &filetype=='go'
        !go run %
    elseif &filetype=='c'
        write %
        !gcc %  
        if filereadable("a.out") 
            !./a.out;rm -f a.out
        endif
    elseif &filetype=='cpp'
        write %
        !g++ %  
        if filereadable("a.out") 
            !./a.out;rm -f a.out
        endif
    elseif &filetype=='vim'
        source %
    elseif &filetype=='javascript'
        !nodejs %
    endif
endfunction

function! GoSetting()
	set tabstop=8
	set noexpandtab
	set shiftwidth=8
endfunction

autocmd BufNew,BufRead *.go call GoSetting()
autocmd BufNewFile *.py r ~/.vim/template/skeleton.py
autocmd BufNewFile *.c r ~/.vim/template/skeleton.c
autocmd BufNewFile *.cpp r ~/.vim/template/skeleton.cpp
autocmd BufNewFile *.htm r ~/.vim/template/skeleton.html
autocmd BufNewFile *.html r ~/.vim/template/skeleton.html
autocmd BufNewFile *.go r ~/.vim/template/skeleton.go

"conf for golang    
set runtimepath+=$GOROOT/misc/vim
"go auto fmt 
"autocmd BufWritePre *.go Fmt
"autocmd BufWritePost *.go !gofmt -w % 
"autocmd BufWritePost *.go %!gofmt

syntax on
"filetype plugin on
"imap <C-Space> <C-x><C-o>


"tabe
noremap H gT
noremap L gt
noremap <leader>t :tabe<CR>

"splited window
noremap <C-RIGHT> 5<C-w>>
noremap <C-LEFT> 5<C-w><
noremap == <C-w>=

noremap <C-h> <C-w>h 
noremap <C-j> <C-w>j 
noremap <C-k> <C-w>k 
noremap <C-l> <C-w>l 

noremap <C-S-h> <C-w>H 
noremap <C-S-j> <C-w>J 
noremap <C-S-k> <C-w>K 
noremap <C-S-l> <C-w>L 



"quit
noremap <leader>q :q<CR>
"force to quit  
noremap <leader>Q :q!<CR>
"write by root 
noremap <leader>s :w !sudo tee %<CR>


"key map
noremap <F2> :vs $MYVIMRC<CR>
noremap <F3> :NERDTree<CR>
noremap <F4> :vs /etc/hosts<CR>
noremap <F5> :call Run()<CR>
noremap <F8> :call Autopep8()<CR>

set t_Co=256
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set nu
set paste
"syntax on
"
