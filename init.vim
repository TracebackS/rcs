call plug#begin('~/.config/nvim/plugged')
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'yggdroot/leaderf'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

runtime colors/molokai.vim

set number
set expandtab
set tabstop=4
set colorcolumn=120
set hlsearch
set incsearch
set shiftwidth=4
set laststatus=2
set cursorline
set mouse=a

map <C-n> :NERDTreeToggle<CR>

inoremap <silent><expr> <C-n> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implemention)
nmap <silent> gr <Plug>(coc-reference)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> <C-LeftMouse> <LeftMouse><Plug>(coc-definition)

let mapleader = "\\"
nnoremap <Leader>f :LeaderfSelf<CR>
nnoremap <Leader>c :CocList<CR>
nnoremap <Leader>q <Plug>(coc-fix-current)
nnoremap <Leader>d :call CocActionAsync('doHover')<CR>
nnoremap <Leader>F :call CocActionAsync('format')<CR>
