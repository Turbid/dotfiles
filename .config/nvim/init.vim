call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'

"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
Plug 'neomake/neomake'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'Vimjas/vim-python-pep8-indent', { 'for': 'python' }
Plug 'hdima/python-syntax', { 'for': 'python' }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja' }

Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }

Plug 'tomasr/molokai'
"Plug 'edkolev/tmuxline.vim'

call plug#end()

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#tab_nr_type=2
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#tabline#buffer_idx_mode=1
let g:tmuxline_powerline_separators=0
let g:deoplete#enable_at_startup=1
let g:neomake_python_enabled_makers=['flake8', 'pep8']
let deoplete#sources#jedi#show_docstring=1
let g:molokai_original = 0

set rnu
set cursorline
set colorcolumn=80

set bg=dark
colorscheme molokai

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

set splitbelow
set splitright

set mouse=a
set noerrorbells
set noshowmode
"set hidden

set ignorecase
set hlsearch
set incsearch


set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

autocmd! BufWritePost * Neomake

nmap <Leader>l :set list! list?<CR>
set listchars=tab:▒░,trail:·,eol:¶

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

nmap <Leader>n <plug>NERDTreeTabsToggle<CR>

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
