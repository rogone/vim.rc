" add plugin
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
"nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
"end nerdtree
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
"Plugin 'python-mode/python-mode'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-bufferline'
"snip
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"end snip
" All of your Plugins must be added before the following line
Plug 'ervandew/supertab'
Plug 'inkarkat/vim-mark'
Plug 'inkarkat/vim-ingo-library'
"set rtp+=/Users/luogang/.fzf/
Plug 'junegunn/fzf.vim'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': './install --all' }
"registers
Plug 'junegunn/vim-peekaboo' 
Plug 'mg979/vim-localhistory'
Plug 'Yggdroot/LeaderF'
" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'zivyangll/git-blame.vim'
" end git
Plug 'itchyny/lightline.vim'
Plug 'feix760/taboo.vim'

Plug 'mbbill/undotree'
Plug 'junegunn/vim-easy-align'
Plug 'itchyny/vim-cursorword'
Plug 'sebdah/vim-delve'
Plug 'voldikss/vim-floaterm'
Plug 'voldikss/LeaderF-floaterm'
Plug 'puremourning/vimspector'
call plug#end()

" load local config of plugins
let s:components = [
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
            \ 'lightline.vim',
            \ 'undotree.vim',
            \ 'vim-cursorword.vim',
            \ 'vim-floaterm.vim',
            \ 'git-blame.vim'
            \]

for name in s:components
    call SourceComponent(name)
endfor
