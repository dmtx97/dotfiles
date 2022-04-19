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
		Plug 'lervag/vimtex'	
		" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
		" Plug 'zchee/deoplete-clang'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
