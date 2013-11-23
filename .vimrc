"pathogen
execute pathogen#infect()

"4 spaces tap
set wrap
set tabstop=4
set expandtab	
set shiftwidth=4

"always keep the status line
set laststatus=2

"conf for syntastic 
let g:syntastic_python_checkers=['flake8'] 
"set statusline += %#warningmsg# 
"set statusline += %{SyntasticStatuslineFlag()} 
"set statusline += %*


set autoread


let mapleader = ";"

"run python
function! RunPy()
    !python %
endfunction

function! Run()
    if &filetype=='python'
        !python %
    endif
endfunction

function! OpenVimrc()
endfunction

function! FileTypeDet()
    if &filetype=='c'
        abbreviate #inc #include 
    endif
endfunction

autocmd BufNew,BufRead * call FileTypeDet()

"conf for golang
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

"tabe noremap H gT
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

"ctags
"set tags=~/code/qpush/tags
"set autochdir

"key map
nnoremap <F2> :vs $MYVIMRC<CR>
noremap <F3> :NERDTree<CR>
nnoremap <F5> :call Run()<CR>



