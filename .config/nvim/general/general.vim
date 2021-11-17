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

" Colors
set background=dark
set termguicolors
set t_Co=256
colorscheme challenger_deep 
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Easy tab switching"
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>

" NERDTree Mappings
nnoremap <F1> :NERDTreeToggle %<CR>
nnoremap <F2> :NERDTreeFocus<CR>

"fzf 

let g:fzf_layout= {'down': '~40%' }

function! s:update_fzf_colors()
  let rules =
  \ { 'fg':      [['Normal',       'fg']],
    \ 'bg':      [['Normal',       'bg']],
    \ 'hl':      [['Comment',      'fg']],
    \ 'fg+':     [['CursorColumn', 'fg'], ['Normal', 'fg']],
    \ 'bg+':     [['CursorColumn', 'bg']],
    \ 'hl+':     [['Statement',    'fg']],
    \ 'info':    [['PreProc',      'fg']],
    \ 'prompt':  [['Conditional',  'fg']],
    \ 'pointer': [['Exception',    'fg']],
    \ 'marker':  [['Keyword',      'fg']],
    \ 'spinner': [['Label',        'fg']],
    \ 'header':  [['Comment',      'fg']] }
  let cols = []
  for [name, pairs] in items(rules)
    for pair in pairs
      let code = synIDattr(synIDtrans(hlID(pair[0])), pair[1])
      if !empty(name) && code > 0
        call add(cols, name.':'.code)
        break
      endif
    endfor
  endfor
  let s:orig_fzf_default_opts = get(s:, 'orig_fzf_default_opts', $FZF_DEFAULT_OPTS)
  let $FZF_DEFAULT_OPTS = s:orig_fzf_default_opts .
        \ empty(cols) ? '' : (' --color='.join(cols, ','))
endfunction

augroup _fzf
  autocmd!
  autocmd ColorScheme * call <sid>update_fzf_colors()
augroup END

nnoremap <silent> <leader><space> :Files<CR>
" Find lines that match query
nnoremap <silent> <leader>; :BLines<CR>
" Command history
nnoremap <silent> <leader>? :History:<CR> 
" Open buffers
nnoremap <silent> <leader>b :Buffers<CR> 


