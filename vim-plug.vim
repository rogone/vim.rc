" add plugin
call plug#begin('~/.vim/plugged')
" let Vundle manage Vundle, required
"Plug 'gmarik/Vundle.vim'
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
"deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
endif
"end deoplete
"snip
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"end snip
" All of your Plugins must be added before the following line
Plug 'ervandew/supertab'
Plug 'inkarkat/vim-mark'
Plug 'inkarkat/vim-ingo-library'
"set rtp+=/Users/luogang/.fzf/
Plug 'junegunn/fzf.vim'
"Plug 'junegunn/fzf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
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
call plug#end()
