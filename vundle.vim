" add plugin
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Plugin 'honza/vim-snippets'
Plugin 'fatih/vim-go'
"nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"end nerdtree
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'python-mode/python-mode'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
"deoplete
"if has('nvim')
  "Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plugin 'Shougo/deoplete.nvim'
  "Plugin 'roxma/nvim-yarp'
  "Plugin 'roxma/vim-hug-neovim-rpc'
"endif
"end deoplete
"Plugin 'SirVer/ultisnips'
" All of your Plugins must be added before the following line
Plugin 'ervandew/supertab'
Plugin 'inkarkat/vim-mark'
"set rtp+=/Users/luogang/.fzf/
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
"registers
Plugin 'junegunn/vim-peekaboo' 
Plugin 'mg979/vim-localhistory'
Plugin 'Yggdroot/LeaderF'
" git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" end git
Plugin 'itchyny/lightline.vim'
Plugin 'feix760/taboo.vim'
call vundle#end()            " required
"set runtimepath^=~/.vim/bundle/ctrlp.vim
filetype plugin indent on    " required
