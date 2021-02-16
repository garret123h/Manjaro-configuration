if has("persistent_undo")
    set undodir=$HOME."/.undodir"
    set undofile
endif

call plug#begin('~/.vim/plugged')

Plug 'doums/darcula'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mbbill/undotree'

call plug#end()

colorscheme darcula

set termguicolors

inoremap kj <esc>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles <CR>
