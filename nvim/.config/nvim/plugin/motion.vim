" treat long, wrapped lines as multiple lines when scrolling
noremap k gk
noremap j gj

" ... but still allow scrolling as if one line
noremap gk k
noremap gj j


" move between windows with hjkl
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-/><C-N><C-w>k
tnoremap <C-l> <C-/><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-/><C-N><C-w>k
inoremap <C-l> <C-/><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
