" basic settings
filetype off
filetype plugin indent on
set smartindent
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set noexpandtab
set hidden
set nocompatible
set ttyfast
set backspace=indent,eol,start
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" aesthetic settings
set number
syntax on
set so=21
set termguicolors
let &t_SI.="\e[3 q" "SI = INSERT mode
let &t_SR.="\e[5 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" plugins
call plug#begin()

" Nerdtree
 Plug 'preservim/nerdtree' |
	Plug 'PhilRunninger/nerdtree-visual-selection' |
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" fzf
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'

" themes
 Plug 'yuttie/hydrangea-vim'

" function definition
Plug 'pechorin/any-jump.vim'

call plug#end()

" plugin settings
""  Nerdtree
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:nerdtree_vis_confirm_open = 0
let g:nerdtree_vis_confirm_copy = 0
let NERDTreeShowHidden = 1
let NERDTreeNaturalSort = 1
let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " default: normal
let g:NERDTreeGitStatusShowClean = 0 " default: 0

" theme
colorscheme hydrangea

" keybinds settings
inoremap <C-l> <esc>$a<C-m>
inoremap <C-k> <esc>k$a<C-m>
nnoremap <C-l> <esc>$a<C-m>
nnoremap <C-k> <esc>k$a<C-m>
vnoremap <C-up> :m '<-2<CR>gv=gv
vnoremap <C-down> :m '>+1<CR>gv=gv
inoremap <C-up> <esc>:m .-2<CR>==a
inoremap <C-down> <esc>:m .+1<CR>==a
inoremap <S-tab> <C-p>

nnoremap <C-n> <cmd>new<CR>
inoremap <C-n> <cmd>new<CR>
nnoremap <C-b> <cmd>Vex<CR>
inoremap <C-b> <cmd>Vex<CR>

nnoremap <C-right> <C-W>l
nnoremap <C-left> <C-W>h
nnoremap <C-down> <C-W>j
nnoremap <C-up> <C-W>k

nnoremap <C-u> <cmd>Files<CR>
nnoremap <C-y> <cmd>Files<CR>
inoremap <C-t> <cmd>NERDTreeToggle<CR>
nnoremap <C-i> <cmd>NERDTreeToggle<CR>
nnoremap <C-d> :AnyJump<CR>
nnoremap <C-i> :AnyJump<CR>

nnoremap <C-a> :noh<CR>
