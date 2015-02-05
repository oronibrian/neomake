" vim: ts=4 sw=4 et

function! neomake#makers#ft#rust#EnabledMakers()
    return ['rustc']
endfunction

"TODO: when #47 is fulfiled, add this as a `Neomake!` maker for rust
function! neomake#makers#ft#rust#cargo()
    return {
        \ 'args': ['build'],
        \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %m,'.
            \ '%f:%l: %trror: %m,'.
            \ '%f:%l: %tarning: %m,'.
            \ '%f:%l: %m',
        \ }
endfunction

function! neomake#makers#ft#rust#rustc()
    return {
        \ 'args': ['-o', neomake#utils#DevNull()],
        \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %m,'.
            \ '%f:%l: %trror: %m,'.
            \ '%f:%l: %tarning: %m,'.
            \ '%f:%l: %m',
        \ }
endfunction