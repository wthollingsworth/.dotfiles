" Load the minpac only when needed
function! PackInit() abort
    packadd minpac
    call minpac#init()

    call minpac#add('kristijanhusak/vim-minpac', { 'type': 'opt' })
    call minpac#add('tpope/vim-commentary')
    call minpac#add('tpope/vim-surround')
    call minpac#add('itchyny/lightline.vim')
    call minpac#add('jiangmiao/auto-pairs')
    call minpac#add('neoclide/coc.nvim', { 'branch': 'release' })
    call minpac#add('ntpeters/vim-better-whitespace')
    call minpac#add('preservim/nerdtree')
    call minpac#add('preservim/tagbar')
    call minpac#add('universal-ctags/ctags')
    call minpac#add('honza/vim-snippets')
    call minpac#add('junegunn/fzf', { 'do': fzf#install() })
    call minpac#add('junegunn/fzf.vim')
    call minpac#add('vim-syntastic/syntastic')

    " colorscheme
    call minpac#add('arcticicestudio/nord-vim')

    " markdown/writing
    call minpac#add('reedes/vim-pencil')
    call minpac#add('rhysd/vim-gfm-syntax')
    call minpac#add('junegunn/goyo.vim')
    call minpac#add('junegunn/limelight.vim')


    " css
    call minpac#add('ap/vim-css-color')

    " rust
    call minpac#add('rust-lang/rust.vim')

    " fish
    call minpac#add('dag/vim-fish')

    call minpac#clean()
endfunction

command! -bang PackUpdate call PackInit() | call minpac#update()
command! PackClean call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()

filetype plugin indent on
set encoding=utf-8

let g:lightline = {
            \ 'colorscheme': 'nord',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
            \ },
            \}

let g:ycm_language_server =
            \ [
            \   {
            \     'name': 'yaml',
            \     'cmdline': [ '/path/to/yaml/server/yaml-language-server', '--stdio' ],
            \     'filetypes': [ 'yaml' ]
            \   },
            \   {
            \     'name': 'rust',
            \     'cmdline': [ 'ra_lsp_server' ],
            \     'filetypes': [ 'rust' ],
            \     'project_root_files': [ 'Cargo.toml' ]
            \   }
            \ ]

" Use <tab> and <s-tab> to navigate the CoC completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Use <cr> to confirm CoC completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Select the first CoC completion item with <cr> if no completion item selected
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" Ask CoC to format code when <cr> is pressed
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Close the CoC preview window when completion is done
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Use Goyo plugin as a trigger for Limelight plugin
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Start NERDTree with vim
autocmd VimEnter * NERDTree

" Open Tagbar
nnoremap <F8> :TagbarToggle<CR>

let mapleader = "\<space>"
let maplocalleader = "\\"
