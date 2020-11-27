set splitbelow          " :vsplit's will appear below the current window
set splitright          " :split's will appear to the right of the current window

" Use Alt+hjkl for buffer resizing
nnoremap <A-h> :vertical resize -5<cr>
nnoremap <A-j> :resize +5<cr>
nnoremap <A-k> :resize -5<cr>
nnoremap <A-l> :vertical resize +5<cr>
