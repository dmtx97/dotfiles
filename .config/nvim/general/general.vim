"Easy tab switching"
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

nmap <F6> :NERDTreeToggle %<CR>


let mapleader=","

syntax enable
set cursorline
set showmatch
set number
set mouse=a
set ignorecase
set tabstop=4
set softtabstop=4
set clipboard=unnamedplus
set matchtime=0
set background=dark
set termguicolors
set t_Co=256

colorscheme challenger_deep 

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
