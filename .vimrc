" Plugins 
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Bag of mappings
Plug 'scrooloose/nerdcommenter'

" Navigation
Plug 'tpope/vim-vinegar'

" Theming
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Filetype specific plugins
Plug 'vim-syntastic/syntastic'
"Plug 'chase/vim-ansible-yaml'

" Git utils
Plug 'tpope/vim-fugitive'

call plug#end()

" Enable filetype detection for plugins and indentation options
filetype plugin on

" Reload a file when it is changed from outside
set autoread

" Write the file when we leave the buffer
set autowrite

" Disable backups, we have source control for that
set nobackup

" Force encoding utf-8, for systems where this is not the default (windows
" comes to mind)
set encoding=utf-8

" Disable swapfiles too
set noswapfile

" Hide buffers instead of closing them
set hidden

" Make backspace behave as expected
set backspace=eol,indent,start

"Set the minimal amount of lignes under and above the cursor
" Usefull for keeping contect when moving j/k
set scrolloff=5

" Show current mode
set showmode

" Show command being executed
set showcmd

" Show line number
set number

" Show distance line number
set relativenumber

" Always show status line
set laststatus=2

" Enhance command line completion
set wildmenu

" Set completion behavior, see :help wildmode for details
set wildmode=longest:full,list:full

" Disable bell completely
"set visualbell
"set t_vb=

" Wrap on column 80
set textwidth=80

" Color the column after textwidth, usually th 80th
set colorcolumn=+1

" Enable line wrapping
set wrap

" Display whitespace characters
set list
set listchars=tab:>─,eol:¬,trail:\ ,nbsp:¤
set fillchars=vert:│

" Enables syntax hightlighting
syntax on

" Enables Doxygen hightlighting
let g:load_doxygen_syntax=1

" Allow mouse use in vim
set mouse=a

"Briefly show matching braces, parens, etc
set showmatch

" Disable preview window on completion
set completeopt=longest,menuone

" Highlight current line
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""""
" Search options
"""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore cas on search
set ignorecase

" Ignore case unless there is an uppercase letter in the pattern
set smartcase

" Move cursor to the matched string
set incsearch

" Don't Hightlight matched strings
set nohlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation options
""""""""""""""""""""""""""""""""""""""""""""""""""

" The length of a tab
" This is for documentation purposes only,
" do not change the default value of 8, ever.
set tabstop=4 softtabstop=4

" The number of spaces inserted/removed when using < or >
set shiftwidth=4

" The number of spaces inserted when you press tab.
" -1 means the same value as shiftwidth

" When tabbing manually, use shiftwidth instead of tabstop and softtabstop
" set smarttab

" Set basic indenting (i.e. copy the indentation of the previous line)
" When filetype detection didn't find a fancy indentation scheme
"set autoindent

set smartindent

" Use a slightly darker background color to differentiate with the status line
let g:jellybeans_overrides = {
\   'background': { 'guibg': '101010'},
\}

"let g:jellybeans_overrides = {
"\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
"\                'ctermfg': 'Black', 'ctermbg': 'Yellow',
"\                'attr': 'bold' },
"\   'background': { 'guibg': '000000'},
"\    'Comment': { 'guifg': 'cccccc' },
"\}

colorscheme jellybeans

""""""""""""""""""""""""""""""""""""""""""""""""""
" Persistence options
""""""""""""""""""""""""""""""""""""""""""""""""""

" Persistent undo
if version >= 703
    set undofile
    set undodir=~/.vim/undodir
    silent !mkdir -p ~/.vim/undodir
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping
""""""""""""""""""""""""""""""""""""""""""""""""""

" Set "," as map leader
let mapleader = ","

" Map escape instead of capslock
"noremap <capslock> <esc>

" Disable arrow
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :echo "No left for you!"<CR>
inoremap <Left> <nop>
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :echo "No right for you!"<CR>
inoremap <Right>  <nop>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :echo "No up for you!"<CR>
inoremap <Up> <nop>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :echo "No down for you!"<CR>
inoremap <Down> <nop>
