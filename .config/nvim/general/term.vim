let g:term_buf = 0
let g:term_win = 0

let g:percentage = (winheight(0)/100.0) * 40
let g:resizeValue = float2nr(percentage + 0.5)

function! TermToggle()
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . g:resizeValue
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" nnoremap <silent> <leader>t :TermSplit<CR>
nnoremap <silent> <leader>t :call TermToggle()<CR>
" close when hitting ESC 
tnoremap <Esc> <C-\><C-n>:bd!<CR>
" open automatically in insert mode
autocmd TermOpen * startinsert




