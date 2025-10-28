" Vanilla is the way to go!
" General settings
if (has("syntax"))
    syntax on
endif
set number
set smartindent autoindent expandtab tabstop=2 shiftwidth=2
set splitright
set splitbelow
set mouse=a
set background=dark
colorscheme default 

" Cursor settings
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"   " default cursor (usually blinking block) otherwise

" Save with Ctrl+s, autosave
inoremap <Esc> <Esc>:w<CR>
nnoremap <C-s> :w<CR>
