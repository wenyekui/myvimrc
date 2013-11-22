set wrap
set tabstop=4
set expandtab	
set shiftwidth=4

function! RunPy()
    !python %
endfunction

function! Run()
    if &filetype=='python'
        call RunPy()
    endif
endfunction

function! OpenVimrc()
    vs $MYVIMRC
endfunction

function! CloseVimrc()
    
endfunction

function! DealC()
    abbreviate #inc #include 
endfunction
function! FileTypeDet()
    if &filetype=='c'
        call DealC()
    endif
endfunction

nnoremap <F2> :call OpenVimrc()<CR>
nnoremap <F5> :call Run()<CR>

autocmd BufNew,BufRead * call FileTypeDet()

"conf for golang
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

"pathogen
execute pathogen#infect()

