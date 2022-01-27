" common options
let mapleader=","
set fileencodings=utf-8,chinese,latin-1
set termencoding=utf-8
set encoding=utf-8
set splitbelow
set splitright
set cmdheight=2
" tty
set ttyfast                     " Indicate fast terminal conn for faster redraw
set ttymouse=xterm2             " Indicate terminal type for mouse codes
set ttyscroll=3                 " Speedup scrolling
set laststatus=2                " Show status line always

set nu!            "设置行号
colorscheme molokai     "设置配色方案
syntax on         "语法高亮
syntax enable        set nobackup        "不生成备份文件
set showmatch        "设置匹配模式
set smartindent        "设置只能对齐
set ai!            "设置自动缩进
set fileencodings=utf-8,gbk
"set ambiwidth=double    "设置中文支持
" set guifont=Source\ Code\ Pro:10 "设置字体及大小
" set mouse=a        "启用鼠标
set modifiable

" tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set autoread                    " Automatically read changed files
set autoindent 
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noerrorbells                " No beeps
set number                      " Show line numbers
set norelativenumber
set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
" set splitright                  " Vertical windows should be split to right
" set splitbelow                  " Horizontal windows should split to bottom
set autowrite                   " Automatically save before :next, :make etc.
set hidden                      " Buffer should still exist if window is closed
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set noshowmatch                 " Do not show matching brackets by flickering
set noshowmode                  " We show the mode with airline or lightline
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not it begins with upper case
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=10                " Completion window max size
set nocursorcolumn              " Do not highlight column (speeds up highlighting)
set cursorline                " Do not highlight cursor (speeds up highlighting)
set lazyredraw                  " Wait to redraw
set expandtab
set smarttab
set autoindent
set cursorline
"set cursorcolumn
set ruler

" Enable to copy to clipboard for operations like yank, delete, change and put
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
if has('unnamedplus')
  set clipboard^=unnamed
  set clipboard^=unnamedplus
endif

" This enables us to undo files even if you exit Vim.
if has('persistent_undo')
  set undofile
  set undodir=~/.config/vim/tmp/undo//
endif

" Colorscheme
syntax enable
set t_Co=256
let g:rehash256 = 1
let g:monokai_original = 1

" Enter automatically into the files directory
autocmd BufEnter * silent! lcd %:p:h

" explore windows
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

" open term
"noremap <c-d> :term ++rows=10<cr>
noremap <c-d> :term<cr>

 "a.vim for c/c++, switch h/c/cpp use f12 or :A
nnoremap <silent> <F12> :A<CR> 

hi PmenuSel ctermfg=255 ctermbg=242 guibg=#808080
set colorcolumn=120
highlight ColorColumn ctermbg=8
