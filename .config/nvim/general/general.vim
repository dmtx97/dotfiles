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

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

imap <C-c> <Esc>
" next in buffer list
nnoremap tn :bn<CR> 
" previous in buffer list
nnoremap tp :bp<CR>
" close buffer
nnoremap td :bd!<CR>
let ftplugin_sql_omni_key = '<C-j>'
" Easy tab switching"
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>

" Searching
nnoremap <leader>s :execute '/\V' . escape(input('/'), '\\/')<CR>

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

" let g:deoplete#enable_at_startup = 1

" call deoplete#custom#var('omni', 'input_patterns', {
"       \ 'tex': g:vimtex#re#deoplete
"       \})

set completeopt-=preview
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


