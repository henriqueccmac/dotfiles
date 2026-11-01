if exists("+regexpengine")
  set regexpengine=0
endif
syntax on
filetype plugin indent on
set number
set wrap
set ruler
"set laststatus=2
"set statusline+=%f

set display+=lastline
set smartindent 
set autoindent 
set expandtab 

set pastetoggle=<F3>
set tabstop=2 
set shiftwidth=2
set softtabstop=2

set splitright
set splitbelow

set mouse=a
set textwidth=80
set background=dark
colorscheme torte 

set showcmd
set showmode
set wildmenu
set hlsearch

" mappings
nnoremap <C-s> :w<CR>
nnoremap <C-'> :b#<CR>
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>
" Minimal/server Vim builds may have no system clipboard support.
if has('clipboard')
  nnoremap <leader>y "+y
  vnoremap <leader>y "+y
else
  nnoremap <leader>y y
  vnoremap <leader>y y
endif
nnoremap <C-e> $
nnoremap <C-a> 0

" keep visual selection after indenting
vnoremap < <gv
vnoremap > >gv

augroup dotfiles_text
  autocmd!
  autocmd FileType text setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
augroup END
