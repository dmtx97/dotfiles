syntax enable
let g:mapleader = "\<Space>"

" General
set cursorline
set showmatch
set number
set mouse=a
set ignorecase
set tabstop=4
set softtabstop=4
set sidescroll=0
set clipboard=unnamedplus
set matchtime=0
set encoding=utf-8
set hidden

" Colors
set background=dark
set termguicolors
set t_Co=256
colorscheme challenger_deep 
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE


" next in buffer list
nnoremap gn :bn<CR> 
" previous in buffer list
nnoremap gp :bp<CR>
" close buffer
nnoremap gd :bd!<CR>

" Easy tab switching"
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>

" Terminal
nnoremap <silent> <leader>t :term<CR>
tnoremap <C-d> <C-\><C-n>:bd!<CR>
autocmd TermOpen * startinsert

" NERDTree Mappings
nnoremap <F1> :NERDTreeToggle %<CR>
nnoremap <F2> :NERDTreeFocus<CR>

"fzf 
let g:fzf_layout= {'down': '~40%' }
nnoremap <silent> <leader><space> :call FilesOpen()<CR>
" nnoremap <silent> <leader><space> :Files<CR>
" Find lines that match query
nnoremap <silent> <leader>; :BLines<CR>
" Command history
nnoremap <silent> <leader>? :History:<CR> 
" Open buffers
nnoremap <silent> <leader>b :Buffers<CR> 

function FilesOpen()
  silent! !git rev-parse --is-inside-work-tree

  if v:shell_error == 0
	:GFiles
  else
	:Files
  endif
endfunction
