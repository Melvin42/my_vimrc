syntax on
set nu
set rnu
set cc=81
set mouse=a
set smartindent
set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set nowrap
set noswapfile
set undodir=~/.vim/undodir
set undofile
colorscheme slate
hi ColorColumn ctermbg=darkgrey

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"FUZZY_FINDING
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-syntastic/syntastic'

"GIT UTILS
Plug 'tpope/vim-fugitive'

Plug 'chase/vim-ansible-yaml'

call plug#end()
