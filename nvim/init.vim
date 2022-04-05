set number
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=9

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

nnoremap <C-y> :Vex<CR>
nnoremap <C-n> :vsplit<CR>

inoremap <C-l> <esc>$a<C-m>
inoremap <C-S-l> <esc>k$a<C-m>

inoremap <silent><expr> <c-space> coc#refresh()

nnoremap <A-right> <C-W>l
nnoremap <A-left> <C-W>h
nnoremap <A-down> <C-W>j
nnoremap <A-up> <C-W>k

vnoremap <S-down> :m '>+1<CR>gv=gv
vnoremap <S-up> :m '<-2<CR>gv=gv
inoremap <S-down> <esc>:m .+1<CR>==a
inoremap <S-up> <esc>:m .-2<CR>==a
