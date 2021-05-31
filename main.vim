
if has("multi_byte") 
    " UTF-8 编码 
    set encoding=utf-8 
    set termencoding=utf-8 
    set formatoptions+=mM 
    set fencs=utf-8,gbk 
    if v:lang =~? '^/(zh/)/|/(ja/)/|/(ko/)' 
        set ambiwidth=double 
    endif 
    if has("win32") 
        source $VIMRUNTIME/delmenu.vim 
        source $VIMRUNTIME/menu.vim 
        language messages zh_CN.utf-8 
    endif 
else 
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte" 
endif

function SourceComponent(name)
    exec 'source ' . s:cwd . a:name
endfunction

let s:cwd = expand('<sfile>:p:h') . '/'
" load plugin
"echom 'myvimrc:'
"echom $MYVIMRC
"echom 'cwd:'.cwd 

let s:components = [
            \ 'vundle.vim',
            \ 'options.vim',
            \ 'vim-go.vim',
            \ 'tagbar.vim',
            \ 'supertab.vim',
            \ 'nerdtree.vim',
            \ 'vim-mark.vim',
            \ 'python.vim',
            \ 'vim-gitgutter.vim',
            \ 'vim-localhistory.vim',
            \ 'leaderf.vim',
            \ 'deoplete.vim',
            \ 'lightline.vim'
            \]

for name in s:components
    call SourceComponent(name)
endfor
