" General settings
syntax on
set number
set smartindent 
set autoindent 
set expandtab 
set tabstop=2 
set shiftwidth=2
set softtabstop=2
set splitright
set splitbelow
set mouse=a
set background=dark
colorscheme default

" Performance optimizations
set lazyredraw          " Don't redraw while executing macros
set ttyfast             " Faster redrawing
set updatetime=300      " Faster completion (default is 4000ms)
set timeoutlen=500      " Faster key sequence completion
set ttimeoutlen=10      " Faster escape key response

" Better file handling
set nobackup            " No backup files
set nowritebackup       " Don't create backup before overwriting
set noswapfile          " No swap files
set hidden              " Allow switching buffers without saving

" Search improvements
set ignorecase          " Case insensitive search
set smartcase           " Case sensitive if uppercase is used
set incsearch           " Incremental search
set hlsearch            " Highlight search results

" UI improvements
set showcmd             " Show incomplete commands
set showmode            " Show current mode
set wildmenu            " Better command-line completion
set wildmode=longest:full,full
set scrolloff=3         " Keep 3 lines visible above/below cursor
set sidescrolloff=5     " Keep 5 columns visible left/right of cursor
set cursorline          " Highlight current line (optional, remove if slow)

" Cursor settings
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"   " default cursor (usually blinking block) otherwise

" Save mappings
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
" Note: Removed autosave on Esc - this can cause issues

" Quick escape from insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Clear search highlighting with <leader>/
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Faster buffer switching
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Keep visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Move lines up/down in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Auto-reload .vimrc on save
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
