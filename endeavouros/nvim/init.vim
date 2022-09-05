" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Fuzzy search
Plug 'junegunn/fzf.vim'

" text-editor
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" git wrapper
" Plug 'tpope/vim-fugitive'

" vim completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

" relative numbers
set number relativenumber
" set nu 

" coc.nvim coc-prettier setup to use :Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" set python provider for neovim
let g:python_host_prog = '/home/brightbug/.asdf/shims/python3' 
let g:python3_host_prog = '/home/brightbug/.asdf/shims/python3'
" let g:python2_host_prog = '/home/brightbug/.asdf/shims/python2'

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

