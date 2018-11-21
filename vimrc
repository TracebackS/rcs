
call plug#begin('~/.vim/plugged')
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'Valloric/YouCompleteMe'
Plug 'rhysd/vim-clang-format'
Plug 'tikhomirov/vim-glsl'
Plug 'vhdirk/vim-cmake'
Plug 'lervag/vimtex'
call plug#end()

set nu
set rnu
set ts=4
set cc=120
set hlsearch
set incsearch
set laststatus=2
set runtimepath^=~/.vim/bundle
set shiftwidth=4 softtabstop=4 

hi ColorColumn ctermbg=darkgreen

let g:ycm_confire_conf = 0
let mapleader = "\\"
nnoremap <Leader>f :ClangFormat<CR> :w<CR>
nnoremap ,/ :noh<CR>
nnoremap <Leader>d :YcmCompleter GoTo<CR>
nnoremap <Leader>s :YcmCompleter GoToImprecise<CR>

