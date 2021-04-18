set incsearch               " incremental search
set hlsearch                " highlight search results

set ignorecase              " case insesitive search
set smartcase               " ... except when capitals explicitly used

" Ctrl+P for fzf picker
nnoremap <C-p> :<C-u>FZF --preview-window right:60\%
                       \ --preview COLORTERM=truecolor\ bat\ --color=always
                                                          \\ --theme=Nord
                                                          \\ --style=numbers\ {}<CR>
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let g:fzf_preview_window = ['right:60%']
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
