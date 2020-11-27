" browse command history with <C-p> and <C-n>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" use a POSIX-compliant shell for shell commands
if &shell =~# "fish$"
    set shell=/bin/bash
endif

" automatic expansion of current directory in commands (Practical Vim)
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

set wildmode=full           " tab completion with out any extra fancy options
