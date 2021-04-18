" Load the packager only when needed
function! PackagerInit() abort
    packadd vim-packager
    call packager#init()

    call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })
    call packager#add('tpope/vim-commentary')
    call packager#add('tpope/vim-surround')
    call packager#add('itchyny/lightline.vim')
    call packager#add('jiangmiao/auto-pairs')
    call packager#add('neoclide/coc.nvim', { 'branch': 'release' })
    call packager#add('ntpeters/vim-better-whitespace')
    call packager#add('preservim/nerdtree')
    call packager#add('preservim/tagbar')
    call packager#add('universal-ctags/ctags')
    call packager#add('honza/vim-snippets')
    call packager#add('junegunn/fzf', { 'do': fzf#install() })
    call packager#add('junegunn/fzf.vim')
    call packager#add('vim-syntastic/syntastic')

    " colorscheme
    call packager#add('arcticicestudio/nord-vim')

    " markdown/writing
    call packager#add('reedes/vim-pencil')
    call packager#add('rhysd/vim-gfm-syntax')
    call packager#add('junegunn/goyo.vim')
    call packager#add('junegunn/limelight.vim')


    " css
    call packager#add('ap/vim-css-color')

    " r rust
    call packager#add('rust-lang/rust.vim')

    " fish
    call packager#add('dag/vim-fish')

    call packager#clean()
endfunction

command! PackagerInstall call PackagerInit() | call packager#install()
command! -bang PackagerUpdate call PackagerInit() | call packager#update({ 'force_hooks': '<bang>' })
command! PackagerClean call PackagerInit() | call packager#clean()
command! PackagerStatus call PackagerInit() | call packager#status()

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
