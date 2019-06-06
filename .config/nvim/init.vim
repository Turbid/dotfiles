call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'

"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'edkolev/tmuxline.vim'

Plug 'tpope/vim-fugitive'

if has('nvim') && has('python3')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'deoplete-plugins/deoplete-jedi'
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
endif

Plug 'tomasr/molokai'

call plug#end()

let g:deoplete#enable_at_startup=1
let deoplete#sources#jedi#show_docstring=0
let g:airline#extensions#tabline#enabled=1
let g:tmuxline_powerline_separators=0

if has('win32') || has('win64')
    source $VIMRUNTIME/mswin.vim
    "set shell=powershell.exe
    "set shellcmdflag=-NoProfile\ -NoLogo\ -NonInteractive\ -Command
    "set shellpipe=|
    "set shellredir=>
endif

set background=dark
colorscheme molokai

set number
set cursorline
set colorcolumn=80

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

set splitbelow
set splitright

set mouse=a
vmap <LeftRelease> "*ygv

set ignorecase
set hlsearch
set incsearch

set title
"set noerrorbells
set noshowmode


nmap <Leader>l :set list! list?<CR>
set listchars=tab:▒░,trail:·,eol:¶

nmap <Leader>n <plug>NERDTreeTabsToggle<CR>

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

