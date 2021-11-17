set t_Co=256
call plug#begin('~/.config/nvim/autoload/plugged')
		Plug 'https://github.com/tpope/vim-commentary'
		Plug 'https://github.com/rafi/awesome-vim-colorschemes'
		Plug 'sheerun/vim-polyglot'
		Plug 'scrooloose/NERDTree'
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'https://github.com/ryanoasis/vim-devicons'
		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
		Plug 'junegunn/fzf.vim'
call plug#end()
