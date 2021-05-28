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
set nu rnu

" coc.nvim coc-prettier setup to use :Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

