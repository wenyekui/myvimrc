function s:svnBlame()
    let line = line(".")
    setlocal nowrap
    aboveleft 18vnew
    " blame, ignoring white space changes
    %!svn blame -x-w "#"
    setlocal nomodified readonly buftype=nofile nowrap winwidth=1
    setlocal nonumber
    if has('&relativenumber') | setlocal norelativenumber | endif
    " return to original line
    exec "normal " . line . "G"
    " synchronize scrolling, and return to original window
    setlocal scrollbind
    wincmd p
    setlocal scrollbind
    syncbind
endfunction

map gb :call <SID>svnBlame()<CR>
command Blame call s:svnBlame()
         
